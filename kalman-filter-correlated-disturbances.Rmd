---
layout: page
author: ricardo mayer
---

<script type="text/x-mathjax-config"> MathJax.Hub.Config({ TeX: { equationNumbers: {autoNumber: "AMS"} } });       
</script>

<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full.js"></script>



# Kalman Filter with correlated disturbances #

Following Sargent and Ljunqvist, 2013,

\[
\begin{align}
x_{t+1} = A x_{t} + C w_{t+1}  \\
y_{t+1} = G x_{t} + D w_{t+1}, \quad \text{ where } \quad w \sim N(0,I)
\end{align}
\]

The decision maker observes $(y_t, \ldots, y_1)$ but not $(x_{t-1}, \ldots,x_0)$.


Derivation of the kalman gain

\[
  E(x_0 -\hat{x_0})(x_0 -\hat{x_0})', \quad y_1 \sim N(G \hat{x}_0, G \Sigma G' + DD')   
\]
\[a_1 = y_1 - E[y_1] =  y_1 - G \hat{x}_0 \]

\[ (x_0 - \hat{x}_0) = L_0 (y_1 - G \hat{x}_0) + \eta   \]

\[  E(x_0 - \hat{x}_0)(y_1 - G \hat{x}_0)' =  E(x_0 - \hat{x}_0)(G (x_0- \hat{x}_0) + D w_1)' = E(x_0 - \hat{x}_0)E(x_0 - \hat{x}_0)'G' = \Sigma_0 G'\]

\[  E(y_1 - G \hat{x}_0)(y_1 - G \hat{x}_0)' = G \Sigma_0 G' + DD'  \]

\[L_0 =  \Sigma_0 G' (G \Sigma_0 G' + DD' )^{-1} \]

\[ x_1 = A_0 \hat{x}_0 + A_0 (x_0 - \hat{x}_0) + C w_1  \]

\[ x_1 = A_0 \hat{x}_0 + A_0 L_0 (y_1 - G \hat{x}_0) + A_0 \eta  + C w_1  \]

\[ E[x_1|y_1] = A_0 \hat{x}_0 + A_0 L_0 (y_1 - G \hat{x}_0) + A_0 E[\eta| y_1]  + E[C w_1|y_1]   \]

And since \( E[\eta| y_1] =0 \) and since

\[
E[C w_1|y_1] = E[C w_1] + E[C w_1 (G x_0 + D w_1 - G \hat{x}_0)'](E(y_1 - G \hat{x}_0)(y_1 - G \hat{x}_0)')^{-1} (y_1 - G \hat{x}_0)
\]


\[
E[C w_1|y_1] = CD' (G \Sigma_0 G' + DD')^{-1} (y_1 - G \hat{x}_0)
\]

\[ E[x_1|y_1] = A_0 \hat{x}_0 + (CD' + A_0 \Sigma_0 G')(G \Sigma_0 G' + DD')^{-1}  (y_1 - G \hat{x}_0)    \]

\[ E[x_1|y_1] = A_0 \hat{x}_0 + (CD' + A_0 \Sigma_0 G')(G \Sigma_0 G' + DD')^{-1}  a_1    \]

\[ \hat{x}_1 = E[x_1|y_1] = A_0 \hat{x}_0 + K_0  a_1    \]

\[  where K_0 = (CD' + A_0 \Sigma_0 G')(G \Sigma_0 G' + DD')^{-1} \]


Recursion for Sigma:

\[ x_1 - \hat{x}_1  = A_0 (x_0 - \hat{x}_0) + C w_1 - K_0 a_1 \]

\[ x_1 - \hat{x}_1  = A_0 (x_0 - \hat{x}_0) + C w_1 - K_0 (G(x_0 - \hat{x}_0) + D w_1) \]

\[ x_1 - \hat{x}_1  = (A_0 - K_0 G)  (x_0 - \hat{x}_0) + (C - K_0 D) w_1 \]

\[ E(x_1 - \hat{x}_1)(x_1 - \hat{x}_1)' = E [ (A_0 - K_0 G)  (x_0 - \hat{x}_0) + (C - K_0 D) w_1][ (A_0 - K_0 G)  (x_0 - \hat{x}_0) + (C - K_0 D) w_1]' \]

\[ E(x_1 - \hat{x}_1)(x_1 - \hat{x}_1)' = E [(A_0 - K_0 G)  (x_0 - \hat{x}_0) + (C - K_0 D) w_1][ (x_0 - \hat{x}_0)' (A_0 - K_0 G)  ' + w_1'(C - K_0 D)'] \]

\[\Sigma_1 =  E(x_1 - \hat{x}_1)(x_1 - \hat{x}_1)' = (A_0 - K_0 G) \Sigma_0 (A_0 - K_0 G) +  (C - K_0 D)(C - K_0 D)'  \]

