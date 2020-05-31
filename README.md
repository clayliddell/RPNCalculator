# Interactive RPN (Reverse Polish Notation) Calculator

An interactive Reverse Polish Notation Calculator.

# Building

This project uses the Cabal tools for building the Haskell code. To build, simply do

    cabal build

once you have Cabal installed.

# Usage

Usage is fairly straight forward, simply run the command, and when prompted, enter an RPN expression to be evaluated:

    $ ./RPNCalc
    Expression: 5 6 * 4 + 2 /
    Result: 17.0
