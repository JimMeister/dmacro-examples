finalT = 40
xvals = 0:finalT
level.start = 1
level.target = 2*level.start
base.rate = 0.02
new.rate = 0.04
diff.rate =  new.rate -base.rate 

persistence80 = 0.8
persistence90 = 0.9
persistence99 = 0.99

rates_80_coeffs = c(c(0,1), cumprod(rep(persistence80,finalT-1)) )
rates_90_coeffs = c(c(0,1), cumprod(rep(persistence90,finalT-1)) )
rates_99_coeffs = c(c(0,1), cumprod(rep(persistence99,finalT-1)) )

rates_base = c(0,rep(base.rate, finalT))
rates_new =  c(0,rep(new.rate, finalT))


rates_tempnew = rates_base
rates_tempnew[2] = new.rate

# rates_tempnew[2] = 0.12 # the doubling time is 30 periods when this is 0.12
### 30 periods is also the doubling time of persistence_80
# rates_tempnew[2] = 0.20 # the doubling time is 26 periods when this is 0.20
### 26 periods is also the doubling time of persistence_90
# rates_tempnew[2] = 0.34 # the doubling time is 19 periods when this is 0.34
# ## 19 periods is also the doubling time of persistence_99
# rates_tempnew[2] = 0.36 # the doubling time is 18 periods when this is 0.36
# ## 18 periods is also the doubling time of rate_new


rates_80 = rates_base + (diff.rate*rates_80_coeffs)
rates_90 = rates_base + (diff.rate*rates_90_coeffs)
rates_99 = rates_base + (diff.rate*rates_99_coeffs)


values.log.baserate = cumsum(rates_base) + log(level.start)
values.log.newrate = cumsum(rates_new) + log(level.start)
values.log.tempnewrate = cumsum(rates_tempnew) + log(level.start)

values.log.persistence_80 = cumsum(rates_80) + log(level.start)
values.log.persistence_90 = cumsum(rates_90) + log(level.start)
values.log.persistence_99 = cumsum(rates_99) + log(level.start)


double_period_base_rate = which.max(values.log.baserate >= (log(2)+log(level.start))) -1
double_period_new_rate = which.max(values.log.newrate >= (log(2)+log(level.start))) -1
double_period_tempnew_rate = which.max(values.log.tempnewrate >= (log(2)+log(level.start))) -1
double_period_persistence_80 = which.max(values.log.persistence_80 >= (log(2)+log(level.start))) -1
double_period_persistence_90 = which.max(values.log.persistence_90 >= (log(2)+log(level.start))) -1
double_period_persistence_99 = which.max(values.log.persistence_99 >= (log(2)+log(level.start))) -1



exact_time_double_base_rate = log(2)/base.rate
exact_time_double_new_rate = log(2)/new.rate



ts_log.baserate = as.ts(values.log.baserate, start=0)
ts_log.newrate = as.ts(values.log.newrate, start=0)
ts_log.tempnewrate = as.ts(values.log.tempnewrate, start=0)
ts_log.persistence80 = as.ts(values.log.persistence_80, start=0)
ts_log.persistence90 = as.ts(values.log.persistence_90, start=0)
ts_log.persistence99 = as.ts(values.log.persistence_99, start=0)



plot(cbind(ts_log.baserate,ts_log.newrate, ts_log.tempnewrate),
     plot.type="single")
abline(h=log(level.target) )

plot(cbind(ts_log.baserate,ts_log.newrate, ts_log.tempnewrate,
           ts_log.persistence80, ts_log.persistence90,  ts_log.persistence99),
     plot.type="single")
abline(h=log(level.target) )



plot(exp(cbind(ts_log.baserate,ts_log.newrate, ts_log.tempnewrate)),
     plot.type="single")
abline(h=level.target )


plot(cbind(ts_log.baserate,ts_log.newrate, ts_log.tempnewrate,
           ts_log.persistence80, ts_log.persistence90,  ts_log.persistence99),
     plot.type="single")

plot(exp(cbind(ts_log.baserate,ts_log.newrate, ts_log.tempnewrate,
           ts_log.persistence80, ts_log.persistence90,  ts_log.persistence99)),
     plot.type="single")
abline(h=level.target )


gr_rates = seq(0.01,0.06,0.001)
time_to_double = log(2)/gr_rates
plot(gr_rates,time_to_double, type="l")

factor_at_35_periods = exp(35*gr_rates)
plot(gr_rates,factor_at_35_periods, type="l")



factor_at_35_periods = exp(35*gr_rates)

print(exp(values.log.baserate[36]))
print(exp(values.log.tempnewrate[36]))
print(exp(values.log.persistence_80[36]))
print(exp(values.log.persistence_90[36]))
print(exp(values.log.persistence_99[36]))
print(exp(values.log.newrate[36]))



# mu*t + lnA_0 = ln(2) + lnA_0
# mu*t = ln(2)
# t = ln(2)/mu