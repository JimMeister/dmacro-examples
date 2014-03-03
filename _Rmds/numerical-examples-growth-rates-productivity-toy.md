---
layout: page
author: ricardo mayer
---

# Numerical examples with growth rates of productivity#
In the introduction to the Toy Model, I made reference to some differences between 
different constant rate of growth and to transitory changes to those rates. 
Here I'll add the case of highly persistent but eroding changes to a growth rate and 
I'll show you a few numerical experiment to illustrate those differences. All 
growth is still assumed to be deterministic, for simplicity.

## Different cases of growth between 2 and 4 percent##

Let's keep the focus on growth rates of 2\% and 4\% and doubling the current level of productivity. I'll use everywhere the logarithmic approximation to growth rates: \( \dfrac{x_t - x_{t-1}}{x_{t-1}} \approx \ln x_t - \ln x_{t-1}  \) which are good approximations for the small growth rates I'm  considering 

### Question: How different are trajectories at constant growth rates of 2 and 4 per cent? ###
The direct approach would be to plot the level of productivity for each case, which corresponds to plot the function \( A_t = e^{\mu t} A_0 \) for \( \mu = 0.02  \) and \( \mu = 0.04\). However, I like to plot also the logartihm of productivity: \( \ln A_t = \mu t + \ln A_0 \) plots are no obscured by too high values, curves with the same growth rate are parallel and easy to spot and the math is slightly simpler. 

Here is the plot in logs, where I also added a line at \(\log(2)\) which represent the double of the initial level of productivity (\(A_0=1, ~ \ln A_0=0\)).

<img src="http://ricardomayerb.github.io/qmacroexamples/figs/numerical-examples-growth-rates-productivity-toy/growth_2_4_log_plot.png" title="center" alt="center" style="display: block; margin: auto;" />




Now, the plot for levels (i.e. productivity level as an exponential function)
<img src="http://ricardomayerb.github.io/qmacroexamples/figs/numerical-examples-growth-rates-productivity-toy/growth_2_4_level_plot.png" title="center" alt="center" style="display: block; margin: auto;" />



While is clear that the 4\% curve hits the doubling mark sooner than the 2\% curve, it's not so clear at which period the productivity has doubled. That's our next question.

### Question: How long it takes to double productivity for growth rates of 2 and 4 percent? ###

For constant growth rates it's easy to give an exact answer: 

\[ t = \frac{\ln(2)}{\mu}, \Rightarrow t = 34.66 \text{ if } \mu=0.02, \quad  t = 17.33 \text{ if } \mu = 0.04\]

Thus, 34 periods are not enough to double in the first case and need a little more than 17 periods in the second. Thus the first integer date when you have doubled productivity will be 35 or 18, depending on the growth rate. If 3\% is our base rate for comparision, 35 periods will be our time-lapse of reference.

The preceeding formula allows to plot this time-to-doubling against growth rates:
<img src="http://ricardomayerb.github.io/qmacroexamples/figs/numerical-examples-growth-rates-productivity-toy/time-to-doubling.png" title="center" alt="center" style="display: block; margin: auto;" />



A less elegant solution is to just write a code that will return the date of first ocurrence of a productivity greater than double of the starting level. It is not as neat as the formula above but it's handy for asking this same question when growth rates are arbitrary sequences.

Here is an example for the base growth rate of 2\%:


{% highlight r %}
double_period_base_rate = which.max(values.log.baserate >= (log(2) + log(level.start))) - 
    1
double_period_base_rate
{% endhighlight %}



{% highlight text %}
## [1] 35
{% endhighlight %}


### Question: how different is a transitory change to 4\% than a permanent one ###
To be precise, we mean by transitory that it only affects the growth rate in period 1, thus it will grow at 4\% in period one and 2\% from thereafter. Doubling comes slightly faster than in the baseline case of 2\% but very far from the permanent 4\%: it takes 34 periods to double, compared with the 35 and 18 we saw before.

I particulary like how simple is the plot in logs: it copies the trayectory of the 4\% curve for a short while (one period) and then follows a parallel line to the 2\%, rather close to the baseline curve:

<img src="http://ricardomayerb.github.io/qmacroexamples/figs/numerical-examples-growth-rates-productivity-toy/transitory_vs_perms_log_plot.png" title="center" alt="center" style="display: block; margin: auto;" />




### How different are (very) persistent but eroding changes from transitory and permanent ones? ###
For very persisting changes I mean that this increase (from 2\% to 4\% in period one) has an autorregressive coefficient of 0.8, 0.9 or 0.99, and you can see the results in the following plot that adds log-trayectories of this three different persistances to our last plot (yes, six rays are a lot, I may take out the 0.90 case):

<img src="http://ricardomayerb.github.io/qmacroexamples/figs/numerical-examples-growth-rates-productivity-toy/persistent_vs_perms_log_plot.png" title="center" alt="center" style="display: block; margin: auto;" />

For autorregressive coefficients of 0.8, 0.9 and 0.99 doubling times are 30, 26 and 19 periods, respectively. As you can see there is a lot of differences between 0.8 and 0.99, but 0.8 is still very significant compared to the pure transitory change.



### How large has to be a transitory change to growth rate to reach the doubling mark as fast as a persitent change? ###

The temporary change in growth would need to take the baseline rate of 2\% to 12\%, 20\% and 34\% to reach the doubling point as fast as the 0.8, 0.9 and 0.99 persistence cases, respectively. And it will have to increase temporarily the growth rate up to 36 \% to mimic the permanent change in this aspect.

I'll show you different matching comparison when we are ready to compute discounted sums of log productivities.


### After 35 periods how large is producitivity under all of these different scenarios? ###

After 35 periods growing at 2\% productivity increased by a factor of 2.01, which is not so different of what we have with our temprary change: the factor is 2.05. The three persistent cases have factors of 2.22, 2.44 and 3.64.

This would be so much better with a table. TODO.



