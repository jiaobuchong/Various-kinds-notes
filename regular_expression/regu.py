#coding=utf-8
import re
withSpace = "   begin\n between\t\n\nend  "
print withSpace

'''去除行首的空白字符'''
beginpattern = r"(?m)^\s+"
trimmedLeadingSpace = re.sub(beginpattern, '', withSpace)
print trimmedLeadingSpace


endpattern = r"(?m)\s+$"
trimmedEndingSpace = re.sub(endpattern, '', trimmedLeadingSpace)
print trimmedEndingSpace

