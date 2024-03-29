---
layout : default
title : Balanced Growth Path and discounting in toy model 3
---

Balanced Growth Path and productivity process
========================================================

## Scaled versus original variables

Along a deterministic Balanced Growth Path, consumption, output, capital and investment growth at the same, and constant, rate than productivity, which we denote  $\mu_a$ . This justifies defining stationary modifications of those variable as follows:

$$C_t := \frac{\tilde{C}_t}{A_{t-1}  }, \quad  K_t := \frac{\tilde{K}_t}{A_{t-1} }, \quad  I_t := \frac{\tilde{I}_t}{A_{t-1} }, \quad L_t := \tilde{L}_t$$

At times we will refer to these scaled variables as the stationary variables. Here is a plot illustrating this

<img src="figure/consumptionplot1.png" title="plot of chunk consumptionplot" alt="plot of chunk consumptionplot" style="display: block; margin: auto;" /><img src="figure/consumptionplot2.png" title="plot of chunk consumptionplot" alt="plot of chunk consumptionplot" style="display: block; margin: auto;" />





## BGP rates 

Summary:
+ long run (net) growth must be zero for labor since is greater than zero and it's bounded
+ assume consumption-to-output is constant, that is they grow at the same rate
+ resource constraint implies that investment also growth to this common rate
+ capital accumulation equation implies capital also growth to this common rate
+ we can find this common rate (of output, consumption, investment and capital), in terms of the productivity growth,  using the equation for output.

In a deterministic BGP , neutral productivity grows at a constant gross
rate of $(1+\mu_a)$. The fraction of hours devoted to work is
obviously bounded, so in a BGP it must be constant.

Call $r_y$ the net growth rate and
call $R_y := (1+r_y)$ to the gross growth rate of consumption and
output. *Suppose, now, that in a BGP the fraction of total output
devoted to consumption is constant*. The resource constraint (when binding) implies that investment, too,
will grow at rate $R_y$ in a BGP :
$$C_t + I_t = Y_t \quad \Rightarrow \quad  I_{t+1} = Y_{t+1} - C_{t+1} = R_y Y_{t} - R_y C_{t} = R_y (Y_{t} -  C_{t}) = R_y I_{t} = R_i I_{t} \Rightarrow R_i = R_y$$

Call $R_k$ the gross growth rate of capital in a BGP. Since investment
will grow at rate $R_y$,
the law of motion of capital implies that
$R_k =  R_y$
$$K_{t+1} =  R_y  ~ K_t$$

$$K_{t+1} = (1-\delta) K_{t} +    I_t$$
$$\Rightarrow  K_{t+2} = (1-\delta) K_{t+1} +    I_{t+1}$$
$$K_{t+1} R_k = (1-\delta)K_{t} R_k  +   I_{t} R_I $$
$$K_{t+1}  = (1-\delta)K_{t}   +    I_{t} R_I  \frac{1}{R_k}$$
$$\Rightarrow   \frac{R_I }{R_k} = 1$$
$$\Rightarrow R_k = R_I  $$
$$\Rightarrow R_k = R_y  $$

Now that the growth rate of capital along the BGP ($R_k$) is written in
terms of that of product ($R_y$) and since $R_L = 1$, we could solve
$R_y$ in terms of the growth rate of productivity. Then, along the deterministic BGP:
$$Y_t = A_{t}^{1-\alpha} K_t^{\alpha} L_t^{1-\alpha}$$
$$Y_{t+1} = A_{t+1}^{1-\alpha} K_{t+1}^{\alpha} L_{t+1}^{1-\alpha}$$
$$Y_{t} R_y = (1+\mu_a)^{1-\alpha} A_{t}^{1-\alpha} R_{k}^{\alpha} K_{t}^{\alpha} L_{t}^{1-\alpha}$$
$$Y_{t} R_y = (1+\mu_a)^{1-\alpha} R_{k}^{\alpha} A_{t}^{1-\alpha}  K_{t}^{\alpha} L_{t}^{1-\alpha}$$
$$Y_{t} R_y = (1+\mu_a)^{1-\alpha} R_{k}^{\alpha} Y_t \$$
$$R_y = (1+\mu_a)^{1-\alpha} R_{k}^{\alpha}  \$$
$$R_y = (1+\mu_a)^{1-\alpha} R_{y}^{\alpha}  \$$
$$R_y^{1-\alpha}  = (1+\mu_a)^{1-\alpha}$$
$$R_y  = (1+\mu_a) $$

In conclusion, in a deterministic BGP, consumption, output, capital and investment grow at the same rate of TFP, while labor does not grow.

Keep in mind that, excepting labor, we will be working with scaled variables. The actual variables will grow at the rate of the scaled ones plus the rate of growth of productivity. This can be deceiving: suppose that scaled investment goes down by 2\% in this current year, but if productivity has grown 2.7\%  in the same period, there is no invesment reduction, it went up by 0.7%

## Subjective discount and growth rate
As I showed to you in the presentation of the model, we can treat the problem of maximizing the present value of utility as if defined on stationary variables only, but we need to ensure that subjective discounting is high enough to take care of the ever growing nature of consumption. We need that $\sum_{t=0}^{\infty}  \beta^t  \ln (A_{t-1}  )$ is bounded.

Let's try different values of $\beta$ for $\mu_a=0.003$ and plot the cumulative sum in the deterministic case of $A$:

<img src="figure/discountplot.png" title="plot of chunk discountplot" alt="plot of chunk discountplot" style="display: block; margin: auto;" />



