#! /usr/bin/python3

from maze_solver import RobotControl
import time

class MazeRobot:
    def __init__(self,laser1,laser2,laser3,turn_dir_1,turn_dir_2,turn_speed,turn_time1,turn_time2):
        self.rc = RobotControl()
        self.laser1 = laser1
        self.laser2 = laser2
        self.laser3 = laser3
        self.turn_dir_1 = turn_dir_1
        self.turn_dir_2 = turn_dir_2
        self.turn_speed = turn_speed
        self.turn_time1 = turn_time1
        self.turn_time2 = turn_time2

    def maze_fun_1(self):
        self.laser()
        self.straight()
        
    def laser(self):
        self.l1 = self.rc.get_laser(self.laser1)
        self.l2 = self.rc.get_laser(self.laser2)
        self.l3 = self.rc.get_laser(self.laser3)

    def straight(self):
        i = 1
        while(i>0):
            self.laser()
            if(self.l1 < 1 and self.l3 < 1):
                count=1
                while(count>0):
                    self.l2=self.rc.get_laser(self.laser2)
                    if(self.l2>=0.5):
                        self.rc.move_straight()
                        count=1
                    if(self.l2<0.5):
                        self.rc.stop_robot()
                        count=0
               
            if(self.l2 < 0.5 and self.l1 > 1):
                self.rc.stop_robot()
                self.rc.turn(self.turn_dir_2,self.turn_speed,self.turn_time1)
                self.rc.stop_robot()
                count=1
                while(count>0):
                    self.l2=self.rc.get_laser(self.laser2)
                    if(self.l2>=0.5):
                        self.rc.move_straight()
                        count=1
                    if(self.l2<0.5):
                        self.rc.stop_robot()
                        count=0
    
            if(self.l2 < 0.5 and self.l3 > 1):
                self.rc.stop_robot()
                self.rc.turn(self.turn_dir_1,self.turn_speed,self.turn_time2)
                self.rc.stop_robot()
                count=1
                while(count>0):
                    self.l2=self.rc.get_laser(self.laser2)
                    if(self.l2>=0.5):
                        self.rc.move_straight()
                        count=1
                    if(self.l2<0.5):
                        self.rc.stop_robot()
                        count=0
                          
    
bot1 = MazeRobot(5,90,179,"clockwise","counter clockwise",0.2,7,8)
bot1.maze_fun_1()
