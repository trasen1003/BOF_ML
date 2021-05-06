# Buffer overflow automatic detection using machine-learning

This project is mainly based on the ideas of the following article :  
X. Li, L. Wang, Y. Xin, Y. Yang, and Y. Chen, ‘Automated Vulnerability Detection in Source Code Using Minimum Intermediate Representation Learning’, Applied Sciences, vol. 10, p. 1692, Mar. 2020, doi: 10.3390/app10051692.

To better understand our work, one can read our article :

The main program is "vulnDet.py" which, when executed, will generate the dataset if needed before proceeding to the learning.

The security-slices generation process is not incorporated in the latter and can be found in the CPGs folder and especially in "security_slices.py"
