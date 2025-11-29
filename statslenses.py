import sqlite3, pandas, matplotlib.pyplot as plt
from PySide6.QtWidgets import (
   QWidget, QVBoxLayout,
)

class MainWindowStats(QWidget):
    def __init__(self, mysql, charttitle, var_xlabel):
        super().__init__()
        #self.setWindowTitle("Stats Lenses")
        self.setLayout(QVBoxLayout())
        self.run_it(mysql, charttitle, var_xlabel)

    def add_labels(self, x, y):
        for i in range(len(x)):
            plt.text(i, y[i] + 0.1, y[i], ha='center', fontsize = 15)  # Aligning text at center

    def on_pick(self, event):
        #plt.gca().set_title("Click at {:.2f}/{:.2f}\non {:s}".format(event.mouseevent.x, event.mouseevent.y,  event.artist.__repr__()))
        #plt.gcf().canvas.draw_idle()  # doesn't seem to be absolutely required,
                                      # but doesn't hurt to put it in
        print ('on_pick')
        if event.inaxes != self.ax:
            return
            # Finde den Index des angeklickten Balkens
        for i, bar in enumerate(self.bars):
            if bar.contains(event)[0]:
                print(f"Geklickter Balken: {self.data.FocalLength[i]}, Wert: {self.data.No[i]}")
                break

    def run_it(self, mysql, charttitle, var_xlabel):
        conn = sqlite3.connect("/home/det/PycharmProjects/write_metadata/lereg.sqlite")
        A = 3
        # by MaxAperture: sql = """select  Count(ID) No, MaxAperture FROM Lenses where Row_colour not NULL Group by MaxAperture"""
        sql = """select count(ID) No, FocalLength FROM Lenses GROUP BY FocalLength_sort"""  # all lenses
        #charttitle = 'All lenses in the database'
        # sql = """select  Count(ID) No, FocalLength FROM Lenses where Row_colour not NULL Group by FocalLength """    # my lenses
        # charttitle = 'Number of my lenses per focal length'

        self.data = pandas.read_sql(mysql, conn)
        plt.rc('figure', figsize=[60.82 * .5 ** (.5 * A), 39.11 * .5 ** (.5 * A)])
        fig, self.ax = plt.subplots()

        fig.canvas.mpl_connect('key_press_event', self.on_pick)
        #fig.canvas.mpl_connect('button_press_event', self.on_pick)

        if var_xlabel == 'Focal Length':
            bars = self.ax.bar(self.data.FocalLength, self.data.No, picker=True)
        elif var_xlabel == 'Max Aperture':
            bars = self.ax.bar(self.data.MaxAperture, self.data.No, picker=True)
        else:
            pass

        print ('PRINT: ', self.data.columns[1])
        plt.xlabel(var_xlabel, labelpad=30, fontsize=15, fontweight=600)
        plt.ylabel("Number", labelpad=25, fontsize=15, fontweight=600)
        plt.xticks(fontsize=12, rotation=45, ha='right')
        plt.yticks(fontsize=14)
        plt.minorticks_on()
        if var_xlabel == 'Focal Length':
            self.add_labels(self.data.FocalLength, self.data.No)
        elif var_xlabel == 'Max Aperture':
            self.add_labels(self.data.MaxAperture, self.data.No)
        else:
            pass

        fig.canvas.manager.set_window_title('Test')

        plt.title(charttitle, pad=50, fontsize=20, fontweight=690, color='#003f79')
        secax = self.ax.secondary_yaxis('right')
        secax.tick_params(labelsize=14)
        plt.show()


'''
if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MainWindowStats()
    window.show()
    sys.exit(app.exec())
'''