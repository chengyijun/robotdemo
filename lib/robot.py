# -*- coding:utf-8 -*-
"""
@author: chengyijun
@contact: cyjmmy@foxmail.com
@file: robot.py
@time: 2020/10/14 13:48
@desc:
"""

import hashlib


def gen_sign(*args):
    m = hashlib.md5()
    m.update(''.join(args).encode("utf8"))
    return m.hexdigest()


def gen_sign_keywords(*args):
    m = hashlib.md5()
    m.update(''.join(args).encode("utf8"))


def main():
    pass


if __name__ == '__main__':
    main()
