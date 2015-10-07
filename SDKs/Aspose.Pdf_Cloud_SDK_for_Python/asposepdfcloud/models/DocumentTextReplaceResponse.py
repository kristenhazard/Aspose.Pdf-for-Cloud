#!/usr/bin/env python

class DocumentTextReplaceResponse(object):
    """NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually."""


    def __init__(self):
        """
        Attributes:
          swaggerTypes (dict): The key is attribute name and the value is attribute type.
          attributeMap (dict): The key is attribute name and the value is json key in definition.
        """
        self.swaggerTypes = {
            'Document': 'Document',
            'Matches': 'int',
            'Code': 'str',
            'Status': 'str'

        }

        self.attributeMap = {
            'Document': 'Document','Matches': 'Matches','Code': 'Code','Status': 'Status'}       

        self.Document = None # Document
        self.Matches = None # int
        self.Code = None # str
        self.Status = None # str
        