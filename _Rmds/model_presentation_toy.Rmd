Toy model presentation
========================================================



With this model I seek to illustrate the mechanisms at work in larger
models featured later in this paper. The simple model features one
sector, TFP only (or labor productivity) and log-utility both in
consumption (unitary risk aversion) and labor.

Preferences
-----------

$$\label{eq:toy_preferences}
E_0 \sum_{t=0}^{\infty}  \beta^t
[ \nu \ln \tilde{C}_t + (1-\nu) \ln (1- \tilde{L}_t)]$$

The following, transformed, variables are stationary:

$$\label{eq:toy_stationary_variables}
C_t := \frac{\tilde{C}_t}{A_{t-1} }, \quad  K_t := \frac{\tilde{K}_t}{A_{t-1} }, \quad  I_t := \frac{\tilde{I}_t}{A_{t-1} }, \quad L_t := \tilde{L}_t$$

In terms of stationary consumption and labor:
$$E_0 \sum_{t=0}^{\infty}  \beta^t
[ \nu \ln (A_{t-1}  ) + \nu \ln C_t + (1-\nu) \ln (1-  L_t)]$$
$$E_0 \sum_{t=0}^{\infty}  \beta^t
[ \nu \ln C_t + (1-\nu) \ln (1-  L_t)] \, + \, \nu E_0 \sum_{t=0}^{\infty}  \beta^t  \ln (A_{t-1}  )$$

Assuming the last term is finite, and this puts a bound on the growth of
TFP vis-a-vis the discount factor, then finding the optimal plans of
consumption and labor (i.e. $\tilde{C}$ and $\tilde{L}$) that maximize ,
itâs equivalent to finding optimal plans of TFP-scaled consumption and
labor ($C$ and $L$) that maximize

$$\label{eq:toy_preferences_stationary}
 E_0 \sum_{t=0}^{\infty}  \beta^t
[ \nu \ln C_t + (1-\nu) \ln (1-  L_t)]$$

Technology
----------

$$\label{eq:Fisher_prod_tilde}
\tilde{Y}_{t} = A_t^{1-\alpha}  \tilde{K}^{\alpha}_{t} L^{1-\alpha}_{t}$$

$$\label{eq:toy_CIYtilde}
\tilde{C}_t + \tilde{I}_t \leq \tilde{Y}_{t}$$

$$\label{eq:toy_Kevol_tilde}
\tilde{K}_{t+1} =  I_t + (1-\delta) K_{t}$$

implying

$$\label{eq:toy_CKYtilde}
\tilde{C}_t + \tilde{K}_{t+1} - (1-\delta)\tilde{K}_{t} \leq A_t^{1-\alpha}  \tilde{K}^{\alpha}_{t} L^{1-\alpha}_{t}$$

$$\begin{aligned}
A_{t+1}  =  & A_{t}~ e^{a_{t+1}},  \quad A_0 ~\text{given} \end{aligned}$$

### Signal and states of productivity

$$\label{eq:toy_a_contem_state}
a_{t+1} = \mu_{a} + \zeta_{a,t+1} + \sigma_{a} w_{a,t+1}$$

$$\begin{aligned}
\label{eq:toy_z_s_contem_state}
z_{t+1} & = A_z z_{t} + C_z w_{t+1} \\
s_{t+1} & = D_s z_{t+1} + G_s w_{t+1}  \end{aligned}$$

#### State space matrix notation for productivity

$$z_{t} := \begin{bmatrix} \mu_a  \\ \zeta_{a,t}  \end{bmatrix}, \quad  w_{t} := \begin{bmatrix} w_{\zeta_a,t}    \\ w_{a, t}  \end{bmatrix}, \quad A_z := \begin{bmatrix} 1 & 0 \\  0 & \rho_a \end{bmatrix}$$

$$C_z := \begin{bmatrix}   0 & 0  \\   \sigma_{\zeta_a} & 0  \end{bmatrix} , \quad D_s := \begin{bmatrix} 1 & 1 \end{bmatrix},\quad  G_s := \begin{bmatrix} \sigma_a & 0  \end{bmatrix}$$

This choice of matrices $C_z, G_s$ implies that all shocks are
orthogonal to each other.

$$\begin{bmatrix} \mu_a & \zeta_{a,0}\end{bmatrix}' =: z_0 \sim N(\check{z}_0, \Sigma_0), \quad \text{ with sufficient statistics } \{\check{z}_0, \Sigma_0\}$$

