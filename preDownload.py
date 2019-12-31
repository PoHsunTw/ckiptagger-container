from ckiptagger import data_utils
import sys

def main():
    # Download data
    data_utils.download_data("./")

if __name__ == "__main__":
    main()
    sys.exit()