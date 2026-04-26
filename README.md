# Compiler-Design-DSL

##  Project Description

This project implements a **mini end-to-end compiler for a Domain-Specific Language (DSL)**. It demonstrates the complete compiler pipeline including **Lexical Analysis, Syntax Parsing, Abstract Syntax Tree (AST) Construction, Semantic Analysis, and Intermediate Code Generation**.

The compiler processes simple statements such as variable assignments and arithmetic expressions, and produces a structured intermediate representation.

---

##  Tools Used

* **C Language** – Core implementation of compiler modules
* **Flex** – Lexical Analyzer for tokenizing input
* **Bison** – Parser for syntax validation and structure generation
* **GCC** – Compiler for building the executable

---

##  Steps to Run

1. Navigate to the `src` directory
2. Run Bison to generate parser files:

   ```bash
   bison -d parser.y
   ```
3. Run Flex to generate lexer files:

   ```bash
   flex lexer.l
   ```
4. Compile all files using GCC:

   ```bash
   gcc lex.yy.c parser.tab.c ast.c semantic.c codegen.c -o compiler
   ```
5. Execute the program with test input:

   ```bash
   ./compiler < ../test/input.txt
   ```

---

##  Sample Input

```
x = 5
y = 10
z = x + y
```

---

##  Sample Output

```
[Lexer] Identifier token detected  
[Lexer] Number token detected  

[Parser] Assignment statement recognized  
[Semantic] Valid variable assignment  
[CodeGen] Intermediate code: temp = x + y  
```

---

##  Compiler Architecture

Source Code → Lexical Analysis → Parsing → AST Construction → Semantic Analysis → Intermediate Code → Output

---

##  Project Structure

* `src/` → Source files (lexer, parser, semantic, codegen, AST)
* `test/` → Input files
* `output/` → Execution screenshots
* `docs/` → Project report

---

##  Key Features

* Modular compiler design
* Token recognition and parsing
* Semantic validation of expressions
* Intermediate code generation
* Clear and structured output

---

##  Done By

**Name:** Rithanya M
**Reg No:** RA2311026050117
**Course:** BTech CSE AIML

---

##  Conclusion

This project provides a clear understanding of how a compiler processes input through multiple stages. It highlights the importance of each phase in transforming high-level code into a structured intermediate representation.
