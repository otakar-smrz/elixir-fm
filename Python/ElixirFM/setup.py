from setuptools import setup

setup(
    name='ElixirFM',
    version='1.2.1',
    description='ElixirFM Functional Arabic Morphology',
    long_description='https://github.com/otakar-smrz/elixir-fm',
    url='https://github.com/otakar-smrz/elixir-fm',
    author='Otakar Smrz',
    author_email='otakar-smrz users.sf.net',
    license='GPL',
    packages=['ElixirFM'],
    entry_points={
        'console_scripts': [
            'elixir-unpretty=ElixirFM:main',
            ],
        },
    )
