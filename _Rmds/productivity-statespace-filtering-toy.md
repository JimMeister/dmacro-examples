---
layout: page
author: ricardo mayer
---

<script type="text/x-mathjax-config"> MathJax.Hub.Config({ TeX: { equationNumbers: {autoNumber: "AMS"} } });       
</script>

<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full.js"></script>



# Productivity, state space representation and filtering #

## State space a la Sargent ##

\[
\begin{equation}
y = G x + v, \quad \text{ where } \quad v \sim N(0,R)
\end{equation}
\]

+ \( p(x) = N(\hat{x}, \Sigma) \) is our prior about the $x$ that is generating the signal $y$ we are seeing
+ \( p(y|x)=N(Gx, R)  \) is the density of the signal we see, conditional on the value of the state that is generating such signal
+ Bayes theorem implies 
\[ p(x|y) = \frac{p(y|x) p(x)}{p(y)}  \]
+ It turns out to be:
\[ p(x|y) = N(\hat{x}^F , \Sigma^F )  \]
\[\hat{x}^F = \hat{x} + \Sigma G' (G \Sigma G' + R)^{-1} (y-G \hat{x})  \]
\[\Sigma^F = \Sigma -   \Sigma G' (G \Sigma G' + R)^{-1}  G \Sigma \]

Now, the evolution of the state is given by

\[  
  x_{t+1} = A x_{t} + w_{t+1}, \quad w \sim N(0, Q) 
\]
