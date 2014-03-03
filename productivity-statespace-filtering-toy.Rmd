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
\[ K_{\Sigma} :=  \Sigma G' (G \Sigma G' + R)^{-1}   \]

Now, the evolution of the state is given by

\[  
  x_{t+1} = A x_{t} + w_{t+1}, \quad w \sim N(0, Q) 
\]

+ predictive density for the state: 
\[ p_{new}(x)  = N(\hat{x}_{new}, \Sigma_{new}) = N(A \hat{x} + K_{\Sigma} (y-G\hat{x}) ,
~ A \Sigma A' - K_{\Sigma} G \Sigma A' + Q )  \]

+ predictive density for the signal: 
\[ p_{new}(y)  = N( G \hat{x}_{new} , ~ G \Sigma_{new} G' + R)  \]


## translation to our toy model ## 


\begin{tabular}{|l|c|c|}
\hline 
Object & RMT & Here \\ 
\hline 
signal & y & s \\ 
\hline 
state & x & z \\ 
\hline 
state autorrgressive matrix & $A$ & $A_z$ \\ 
\hline 
design matrix & $G$ & $D_s$ \\ 
\hline 
state shock variance & $Q$ & $CC'$ \\ 
\hline 
signal shock variance & $R$ & $GG'$ \\ 
\hline 
state prior variance & $\Sigma$ & $\Sigma$ \\ 
\hline 
Kalman gain & $K_{\Sigma}$ & $\mathcal{K}(\Sigma)$ \\ 
\hline 
foo & goo & moo \\ 
\hline 
\end{tabular} 


