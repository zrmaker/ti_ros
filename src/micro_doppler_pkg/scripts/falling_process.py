#!/usr/bin/env python
# Author: Feng Jin

import argparse
import rospy
import rosbag
import numpy as np
import math
import subprocess
import matplotlib.pyplot as plt
from micro_doppler_pkg.msg import MicroDoppler
from ti_mmwave_rospkg.msg import RadarScan
import os

class falling_proc:
    def __init__(self):
        self.bagsrcdir  = '/home/ece561/rosbag/' 
        self.csvdir     = '/home/ece561/rosbag/'     

    def filter(self):
        for file in os.listdir(self.bagsrcdir):
            if file.endswith(".bag") & file.startswith("falling"):
                bag = rosbag.Bag(self.bagsrcdir + file)
                stamp = np.array([''])
                for msg in bag.read_messages(topics=['/ti_mmwave/micro_doppler']):
                    time = str(msg.message.header.stamp.secs) + '.' + str(msg.message.header.stamp.nsecs)
                    stamp = np.append(stamp, np.array([time]))
                stamp = stamp[1:]
                timefile = file[:-4] + '_time.csv'
                falling_time = np.genfromtxt(self.csvdir + timefile,delimiter=',')
                num_falling = np.size(falling_time, 0)
                filter_arg = '\"('
                for i in range(num_falling):
                    filter_arg = filter_arg + '((t.secs>=' + stamp[int(falling_time[i,0])-5] + ')&(' + 't.secs<=' + stamp[int(falling_time[i,1])+5] +'))or'
                filter_arg = filter_arg[:-2] + ')\"'
                print('********************************')
                print(filter_arg)
                unfiltered_file = self.bagsrcdir + file
                filtered_file = self.bagsrcdir + "processed/" + file
                command = "rosbag filter " + unfiltered_file + ' ' + filtered_file + ' ' + filter_arg
                print(command)
                self.p = subprocess.Popen(command, stdin=subprocess.PIPE, shell=True)
                # print(timefile)
                # print("**********************")
    def main(self):
        self.filter()

if __name__ == '__main__':
    falling_proc().filter()