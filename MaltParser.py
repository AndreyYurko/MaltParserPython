import os
import pandas as pd


class Parser:
    # относительный или абсолютный путь к рабочей папке
    def __init__(self, path):
        self.path = path

    def parse(self, filename):
        dir = f'{self.path}mp4ru/mp4ru/target/'
        command = f'java -jar {dir}mp4ru-1.0.0.jar -cm {dir}res/russian-utf8.par ' \
                  f'-tt {dir}res/ -pc {dir}res/russian.mco -tf {filename}'
        os.system(command)
        path_to_res = f'{filename[:filename.rfind(".")]}.parse'
        res = pd.read_csv(path_to_res, sep='\t', header=None)
        return res
