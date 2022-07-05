from distutils.core import setup
from Cython.Build import cythonize

setup(
    package_dir = {'': 'cython'}
    ext_modules = cythonize("main.pyx")
)
