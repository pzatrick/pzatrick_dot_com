import os

from setuptools import setup, find_packages

here = os.path.abspath(os.path.dirname(__file__))
README = open(os.path.join(here, 'README.txt')).read()
CHANGES = open(os.path.join(here, 'CHANGES.txt')).read()

requires = [
    'pyramid',
    'pyramid_debugtoolbar',
    'waitress',
    'hiero',
    'horus',
    'deform_bootstrap'
]

setup(name='pzatrick_dot_com',
      version='0.0',
      description='pzatrick_dot_com',
      long_description=README + '\n\n' +  CHANGES,
      classifiers=[
        "Programming Language :: Python",
        "Framework :: Pylons",
        "Topic :: Internet :: WWW/HTTP",
        "Topic :: Internet :: WWW/HTTP :: WSGI :: Application",
        ],
      author='',
      author_email='',
      url='',
      keywords='web pyramid pylons',
      packages=find_packages(),
      include_package_data=True,
      zip_safe=False,
      install_requires=requires,
      tests_require=requires,
      test_suite="pzatrick_dot_com",
      entry_points = """\
      [paste.app_factory]
      main = pzatrick_dot_com:main
      [console_scripts]
      init_db = pzatrick_dot_com.scripts.initializedb:main
      """,
      )

