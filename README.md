# Functional and Logic Programming — Haskell & Prolog Exercises

This repository contains **practical exercises and examples** in **Haskell** (functional programming) and **Prolog** (logic programming).  
The aim is to practice and demonstrate key concepts from both paradigms through problems, solutions, and scripts organized by topic and unit.

---


## Folder Descriptions

### /Prolog

Contains exercises, scripts, and integration examples in Prolog.

- **PrologEjercicios/**: General Prolog exercises, recursion, queries, and data manipulation.
- **prol/**: Example using [Pengines](https://www.swi-prolog.org/pldoc/doc_for?object=section(%27packages/pengines.html%27)) for web integration — includes code to check if a number is even via a web page.
- **prologPHP/**: Example integrating Prolog with PHP.

### /Unidad 1

Haskell functional programming exercises on basics:
- Syntax and operators
- Recursive functions
- Control structures
- Logical and arithmetic problems

Includes the `sintaxis/` subfolder with basic Haskell examples (functions, guards, comments, operators).

### /Unidad 2

Haskell exercises on **lists**, **algebraic data types**, and **binary trees**:
- List operations, list comprehensions, and custom data types
- `arboles/` subfolder: binary tree definitions, traversals, search functions, and helpers

---

## Requirements

- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/) to run `.hs` files
- [SWI-Prolog](https://www.swi-prolog.org/) to run `.pl` files
- Optional:
    - PHP for `/Prolog/prologPHP`
    - Local server to test `/Prolog/prol/index.html` with Pengines

---

## Usage Examples

### Haskell

To compile and run a Haskell file:
```bash
ghc factorial.hs
./factorial


