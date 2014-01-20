N = 100
growth.rate = rnorm(n=N, mean=0.0015, sd=0.001)

consum_sca_ini  = 0
consum_sca = consum_sca_ini
rho_c = 0.85

v_consum_sca = rep(0, N)

for (i in 1:N){
  consum_sca =  rho_c*consum_sca + 3*growth.rate[i]
  v_consum_sca[i] =  consum_sca
}

lnA = cumsum(growth.rate)

plot(lnA+v_consum_sca)
