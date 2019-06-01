#!/usr/bin/python3
# -*- coding: utf-8 -*-
# File ping.py
# Date 2019-05-31 14:55
# Author Medue

import os
import sys
import socket
import struct
import array
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))


class Pinger(object):
    def __init__(self, timeout=3):
        self.timeout = timeout
        self.__id = os.getpid()
        self.__data = struct.pack('h', 1)

    @property
    def __icmpSocket(self):
        icmp = socket.getprotobyname("icmp")
        sock = socket.socket(socket.AF_INET, socket.SOCK_RAW, icmp)
        return sock

    @staticmethod
    def __doCksum(packet):
        words = array.array('h', packet)
        sums = 0
        for word in words:
            sums += (word & 0xffff)
        sums = (sums >> 16) + (sums & 0xffff)
        sums += (sums >> 16)
        return (~sums) & 0xffff

    @property
    def __icmpPacket(self):
        header = struct.pack('bbHHh', 8, 0, 0, self.__id, 0)
        packet = header + self.__data
        cksum = self.__doCksum(packet)
        header = struct.pack('bbHHh', 8, 0, cksum, self.__id, 0)
        return header + self.__data

    def sendPing(self, target_host):
        sock = self.__icmpSocket
        # noinspection PyBroadException
        try:
            socket.gethostbyname(target_host)
            sock.settimeout(self.timeout)
            packet = self.__icmpPacket

            sock.sendto(packet, (target_host, 1))

            ac_ip = sock.recvfrom(1024)[1][0]
            sock.close()
            if ac_ip:
                return True
            exit('Error: 服务站点无响应！')
        except Exception as e:
            sock.close()
            exit(e)
