# tsTocplusplus

Code Transpilator from TypeScript to C++

## Compiling Lex And Yacc

You shuld have the following installed on your system
if yo choose to modify the lex 'ts2c.l' or yacc 'ts2c.y' files, you would need to step through the following steps:

    1. Run lex compiler:
        ```bash
        lex ts2cpp.l
        ```
    2. Run yacc compiler:
        ```bash
        yacc ts2cpp.y
        ```
    3. Run cc compiler:
        ```bash
        cc y.tab.c -ly -ll
        ```

## Contributing

    You can help this project become more robust and powerful by adding your own features, fixing bugs, or improving the existing features.

    Fork this project on GitHub and begin coding! :tada:

## Utilizando Docker

    If you want to use Docker, you can use the following command:
    - `docker build -t transpilador_tstocpp .`
    - `docker run -it transpilador_tstocpp`

    In this part you can use the compiling tools to compile the lex and yacc files.
