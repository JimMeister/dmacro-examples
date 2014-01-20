finalT = 40
xvals = 0:finalT
level.start = 1
level.target = 2*level.start
base.rate = 0.02
new.rate = 0.04

rates_base = c(0,rep(base.rate, finalT))
rates_new =  c(0,rep(new.rate, finalT))
rates_tempnew = rates_base
rates_tempnew[2] = new.rate

values.log.baserate = cumsum(rates_base) + log(level.start)
values.log.newrate = cumsum(rates_new) + log(level.start)
values.log.tempnewrate = cumsum(rates_tempnew) + log(level.start)



double_period_base_rate = which.max(values.log.baserate >= (log(2)+log(level.start))) -1
double_period_new_rate = which.max(values.log.newrate >= (log(2)+log(level.start))) -1
double_period_tempnew_rate = which.max(values.log.tempnewrate >= (log(2)+log(level.start))) -1


exact_time_double_base_rate = log(2)/base.rate
exact_time_double_new_rate = log(2)/new.rate



ts_log.baserate = as.ts(values.log.baserate, start=0)
ts_log.newrate = as.ts(values.log.newrate, start=0)
ts_log.tempnewrate = as.ts(values.log.tempnewrate, start=0)
plot(cbind(ts_log.baserate,ts_log.newrate, ts_log.tempnewrate), plot.type="single")
abline(h=log(level.target) )

plot(exp(cbind(ts_log.baserate,ts_log.newrate, ts_log.tempnewrate)), plot.type="single")
abline(h=level.target )



gr_rates = seq(0.01,0.06,0.01)
time_to_double = log(2)/gr_rates
plot(gr_rates,time_to_double, type="l")

factor_at_35_periods = exp(35*gr_rates)
plot(gr_rates,factor_at_35_periods, type="l")



factor_at_35_periods = exp(35*gr_rates)


# mu*t + lnA_0 = ln(2) + lnA_0
# mu*t = ln(2)
# t = ln(2)/mu