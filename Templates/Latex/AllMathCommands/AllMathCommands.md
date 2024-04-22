# All Math Commands In Latex

## Math environment types
| Type                        | Environment                             | Latex Short | Tex Short |
| --------------------------- | --------------------------------------- | ----------- | --------- |
| Inline Text                 | \begin{math}...\end{math}               | \\(...\\)   | \$...\$   |
| Numbered equation paragraph | \begin{equation*}...\end{equation}      | \\[...\\]   | $$...$$   |
| Plain equation paragraph    | \begin{displaymath}...\end{displaymath} | \\[...\\]   | $$...$$   |

Note: Use $ \displaymath \sum $ to show full symbol size like in equation environment in inline text.

## Symbols:

You can directly use following symbols and they will be printed as is

` + - = ! / ( ) [ ] < > | ' : `

### Greek Letters:

You can get greek letters using following:

| Greek letter | Command for small letter |
| ------------ | ------------------------ |
| &#945;       | \alpha                   |
| &#946;       | \beta                    |
| &#947;       | \gamma                   |
| &#948;       | \delta                   |
| &#949;       | \epsilon                 |
| &#950;       | \zeta                    |
| &#951;       | \eta                     |
| &#952;       | \theta                   |
| &#953;       | \iota                    |
| &#954;       | \kappa                   |
| &#955;       | \lambda                  |
| &#956;       | \mu                      |
| &#957;       | \nu                      |
| &#958;       | \xi                      |
| &#959;       | \omicron                 |
| &#960;       | \pi                      |
| &#961;       | \rho                     |
| &#962;       | \varsigma                |
| &#963;       | \sigma                   |
| &#964;       | \tau                     |
| &#965;       | \upsilon                 |
| &#966;       | \phi                     |
| &#967;       | \chi                     |
| &#968;       | \psi                     |
| &#969;       | \omega                   |

To get the capital version of them capitalise the first character, to get the var version use `var` in start.

### Operators:

| Operator name                | Command            | Example             |
| ---------------------------- | ------------------ | ------------------- |
| Summation (big sigma)        | \sum               | $\sum$              |
| Product all (big pi)         | \prod              | $\prod$             |
| Coproduct                    | \coprod            | $\coprod$           |
| Big Plus In Circle           | \bigoplus          | $\bigoplus$         |
| Big Multiplication In Circle | \bigotimes         | $\bigotimes$        |
| Big Dot In Circle            | \bigodot           | $\bigodot$          |
| Big cup / Like Union         | \bigcup            | $\bigcup$           |
| Big cap / Like Intersection  | \bigcap            | $\bigcap$           |
| Big cup & + / Like Union     | \biguplus          | $\biguplus$         |
| Big square cup               | \bigsqcup          | $\bigsqcup$         |
| Big V                        | \bigvee            | $\bigvee$           |
| Big wedge                    | \bigwedge          | $\bigwedge$         |
| Integral                     | \int               | $\int$              |
| Circular Integral            | \oint              | $\oint$             |
| Double Integral AMS Math     | \iint till \iiiint | $\iint$             |
| Integral dots AMS Math       | \idotsint          | $\idotsint$         |
| ()                           | (a)                | $(a)$               |
| []                           | [a]                | $[a]$               |
| {}                           | \\{a\\}            | $\{a\}$             |
| \|                           | \|a\|              | $\|a\|$             |
| \|\|                         | \|\|a\|\|          | $\|\|a\|\|$         |
| <>                           | \langle a \rangle  | $\langle a \rangle$ |
| Floor operator ˩             | \lfloor a \rfloor  | $\lfloor a \rfloor$ |
| Cieling operator ˥           | \lceil a \rceil    | $\lceil a \rceil$   |

Notes:
- Operators of \left pair type can be made bigger using size modifiers which are big, Big, bigg, Bigg like \big(.
- If delimiters need to be balanced like bracket, but equation has only one side use . for invisible delimiter like \left|. will make subscript notation and pipe on right only.

## Other Operators:

To show superscript or power notaion use ^

To show subscript use _ or `|`_ like $f=a|_{n=17}$.

Then we have \bmod and \pmod to use for modulus operator. It can display as `mod` or `(mod a)`.

## Fractions:

Fractions are shown by `\frac{a}{b}` or `a \over b` which will paint a/b nicely.
Like $\frac{a}{b}$.

Continuous fractions or nested repeating series representation of ractions is using `1+ \cfrac{1}{n!}`.
Like $1+ \cfrac{1}{n+\cfrac{1}{n}}$.

Binomial coefficient or choose a function is using `\binom{n}{k}` or `n \choose k` which will print big left parenthesis and function choice and right parenthesis.
Like $\binom{n}{k}$

Use `\tfrac` and `\dfrac` to use displaymath fraction inline.

Use `\tbinom` and `\dbinom` for binomial coefficient.

## Roots

Use `2=\sqrt[power]{4}` to get square root of 4 to power, where power is nth square root. Like $2=\sqrt[power]{4}$.

## Matrices

Basic matrices are like tabular environment.

```tex
\begin{matrix}
a & b \\
c & d 
\end{matrix}
```

Results:

|     |     |
| --- | --- |
| a   | b   |
| c   | d   |

To specify alignment use `matrix*` instead of `matrix` and give position parameter in [].

```tex
\begin{matrix*}[l]
a & b \\
c & d 
\end{matrix}
```

Use specific versions of matrix instead of `\left \begin{matrix}...` from ams math package:

| Environment name | Delimiter Inserted |
| ---------------- | ------------------ |
| pmatrix          | ()                 |
| bmatrix          | []                 |
| Bmatrix          | {}                 |
| vmatrix          | \|\|               |
| Vmatrix          | \|\|..\|\|         |

Like MathTex output:
$$
\begin{matrix}
a & b \\
c & d 
\end{matrix}
$$

To have border in the matrix use \bordermatrix

```
\bordermatrix{~ & x & y \cr
A & 1 & 0 \cr
B & 0 & 1 \cr
}
```

This creates something like this:

|     | x   | y   |
| --- | --- | --- |
| A   | 1   | 0   |
| B   | 0   | 1   |

- Use * version for alignment.
- Use \cdots, \vdots and \ddots for dots in horizontal, vertical and diagonal directions.
- Add extra space in ams math matrices using `[0.3em]` after `\\`.

### Small Matrix in running text

To get small matrix inline to text use `\begin{smallmatrix}` environment.
