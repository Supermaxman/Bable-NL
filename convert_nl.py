
from webvtt import WebVTT
import os

def convert(data_directory, input_folder_name, output_file_name):
    print(f'Appending {input_folder_name} to {output_file_name}...')
    input_path = os.path.join(data_directory, input_folder_name)
    output_path = os.path.join(data_directory, 'output')
    output_file_path = os.path.join(output_path, f'{output_file_name}.txt')
    with open(output_file_path, 'a+') as o:
        for filename in os.listdir(input_path):
            print(f'Converting {filename}')
            prev_txt = ''
            for caption in WebVTT().read(os.path.join(input_path, filename)):
                next_txt = caption.text.strip()
                if '\n' not in next_txt and prev_txt != next_txt:
                    o.write(next_txt + ' ')
                prev_txt = next_txt
            o.write('\n')

data_directory = 'D:\\Data\\northernlion'
convert(data_directory, 'input_rb', 'nl-isaac')
convert(data_directory, 'input_ab', 'nl-isaac')
convert(data_directory, 'input_abp', 'nl-isaac')
