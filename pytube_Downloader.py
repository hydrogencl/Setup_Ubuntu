from subprocess import run
from pytube import YouTube
from pytube import Playlist
import re, os
import argparse

def get_Youtube_MP4(str_url):
    print("Getting the item from url: {}".format(str_url))
    obj = YouTube(str_url)
    try:
        strFileName = obj.streams.filter().get_by_itag(22).download()
    except:
        strFileName = obj.streams.filter().get_by_itag(251).download()

    return strFileName

def convert_to_mp3(strFileName, numIndex=None):
    strFileNameIn = os.path.basename(strFileName)
    run(['mv',strFileNameIn, 'out.mp4'])
    run(['ffmpeg','-i','out.mp4','-ab','320k','out.mp3'])
    strFileNameOnly = re.split('.webm',strFileNameIn)[0]
    strFileNameOnly2 = re.split('.mp4',strFileNameOnly)[0]
    print(strFileNameOnly2)
    if numIndex == None:
        run(['mv','out.mp3','{0:s}.mp3'.format(strFileNameOnly2)])
    else:
        run(['mv','out.mp3','{1:02d}_{0:s}.mp3'.format(strFileNameOnly2, numIndex)])


if __name__ == '__main__':
    parser = argparse.ArgumentParser()    
    parser.add_argument('-u','--url-in',  type=str)
    parser.add_argument('-l','--list-url-in',  type=str)
    parser.add_argument('-m','--mp3',  action="store_true")
    args = parser.parse_args()
    if args.url_in != None:
        url_in = args.url_in
        strMP4 = get_Youtube_MP4(url_in)
        if args.mp3:
            convert_to_mp3(strMP4)

    if args.list_url_in != None:
        list_url_in = args.list_url_in
        arrList     = Playlist(list_url_in)
        for ind, item in enumerate(arrList):
            strMP4 = get_Youtube_MP4(item)
            if args.mp3:
                convert_to_mp3(strMP4, numIndex=ind)

