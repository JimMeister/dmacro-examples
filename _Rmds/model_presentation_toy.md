---
layout: page
author: ricardo mayer
---

<script type="text/x-mathjax-config"> MathJax.Hub.Config({ TeX: { equationNumbers: {autoNumber: "AMS"} } });       
</script>

<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full.js"></script>



# Toy model presentation #




This is the basic RBC model with endogenous labor and logarithmic preferences, with two small additions regardig the productivity process. It's called basic because  many common modifications are absent: variable capital utilizacion, non-TFP (or non-labor) shocks, adjustment costs, imperfect information, multiple economic sectors, borrow constraints and imperfect information to name a few. The only non-basic feature is that the economy is non-stationary and there are permanent and transitory shocks not to the level of productivity but to its growth rate. .


## Preferences ##


\[
\begin{equation}\label{eq:toy-preferences}
E_0 \sum_{t=0}^{\infty}  \beta^t
[ \nu \ln \tilde{C}_t + (1-\nu) \ln (1- \tilde{L}_t)]
\end{equation}
\]


The following, transformed, variables are stationary:

\[
\begin{equation}
\label{eq:toy-stationary-variables}
C_t := \frac{\tilde{C}_t}{A_{t-1} }, \quad  K_t := \frac{\tilde{K}_t}{A_{t-1} }, \quad  I_t := \frac{\tilde{I}_t}{A_{t-1} }, \quad L_t := \tilde{L}_t
\end{equation}
\]

In terms of stationary consumption and labor:

\[
E_0 \sum_{t=0}^{\infty}  \beta^t
[ \nu \ln (A_{t-1}  ) + \nu \ln C_t + (1-\nu) \ln (1-  L_t)]
\]

\[E_0 \sum_{t=0}^{\infty}  \beta^t
[ \nu \ln C_t + (1-\nu) \ln (1-  L_t)] \, + \, \nu E_0 \sum_{t=0}^{\infty}  \beta^t  \ln (A_{t-1}  )
\]

Since the last term is finite,  finding the optimal plans of
consumption and labor (i.e. $\tilde{C}$ and $\tilde{L}$) that maximize
\eqref{eq:toy-preferences} ,
it's equivalent to finding optimal plans of TFP-scaled consumption and
labor ($C$ and $L$) that maximize \eqref{eq:toy-preferences-stationary}

\[
\begin{equation}
\label{eq:toy-preferences-stationary}
 E_0 \sum_{t=0}^{\infty}  \beta^t
[ \nu \ln C_t + (1-\nu) \ln (1-  L_t)]
\end{equation}
\]

## Technology ##


\[
\label{eq:toy_prod_tilde}
\tilde{Y}_{t} = A_t^{1-\alpha}  \tilde{K}^{\alpha}_{t} L^{1-\alpha}_{t}
\]

\[
\label{eq:toy_CIYtilde}
\tilde{C}_t + \tilde{I}_t \leq \tilde{Y}_{t}
\]

\[
\label{eq:toy_Kevol_tilde}
\tilde{K}_{t+1} =  I_t + (1-\delta) K_{t}
\]

implying

\[
\begin{equation}
\label{eq:toy_CKYtilde}
\tilde{C}_t + \tilde{K}_{t+1} - (1-\delta)\tilde{K}_{t} \leq A_t^{1-\alpha}  \tilde{K}^{\alpha}_{t} L^{1-\alpha}_{t}
\end{equation}
\]

\[
\begin{aligned}
A_{t+1}  =  & A_{t}~ e^{a_{t+1}},  \quad A_0 ~\text{given} \end{aligned}
\]




### Signal and states of productivity

What drives the evolution of productivity, given \(A_0\), it's the sequence of growth rates in times which we model as having a long run mean value \( \mu \) plus a persistent but stationary stochastic component \( \zeta_a \) and a purely transitoy stochastic component \( w_a \).

\[
\begin{align}
\mu_{a} & = \mu_{a} \\
\zeta_{a,t+1} & = A_{\zeta_a} \zeta_{a,t} + \sigma_{\zeta_a} w_{\zeta_a, t+1} \label{eq:zetaa-evol} \\
a_{t+1} & = \mu_{a} + \zeta_{a,t+1} + \sigma_{a} w_{a,t+1} \label{eq:signal_contemp_state}
\end{align}
\]

Rewrite this using vector and matrices, which is more compact and able to 
accomodate larger models:

$$\begin{aligned}
\label{eq:toy_z_s_contem_state}
z_{t+1} & = A_z z_{t} + C_z w_{t+1} \\
s_{t+1} & = D_s z_{t+1} + G_s w_{t+1}  \end{aligned}$$

#### State space matrix notation for productivity

$$z_{t} := \begin{bmatrix} \mu_a  \\ \zeta_{a,t}  \end{bmatrix}, \quad  w_{t} := \begin{bmatrix} w_{\zeta_a,t}    \\ w_{a, t}  \end{bmatrix}, \quad A_z := \begin{bmatrix} 1 & 0 \\  0 & \rho_a \end{bmatrix}$$

$$C_z := \begin{bmatrix}   0 & 0  \\   \sigma_{\zeta_a} & 0  \end{bmatrix} , \quad D_s := \begin{bmatrix} 1 & 1 \end{bmatrix},\quad  G_s := \begin{bmatrix}  0 & \sigma_a   \end{bmatrix}$$

This choice of matrices $C_z, G_s$ implies that all shocks are
orthogonal to each other, because \( C_z G_s' = 0  \)

$$\begin{bmatrix} \mu_a & \zeta_{a,0}\end{bmatrix}' =: z_0 \sim N(\check{z}_0, \Sigma_0), \quad \text{ with sufficient statistics } \{\check{z}_0, \Sigma_0\}$$

