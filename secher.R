secher<-read.table("secher.txt",header=T)
model_bpd<-lm(bwt~bpd, data=secher)
sum.model_bpd<-summary(model_bpd)
R2<-sum.model_bpd$r.squared
f<-sum.model_bpd$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2_bpd = %f and p-value_bpd=%f", R2, p.value)
cat(output)
intercept<-model_bpd$coefficients[1]
slope<-model_bpd$coefficients[2]
output<-sprintf(" slope_bpd=%f  intercept_bpd=%f",slope, intercept)
cat(output)
png("bwt_bpd.png")
plot(bwt~bpd, data=secher)
abline(model_bpd)
dev.off()


secher<-read.table("secher.txt",header=T)
model_ad<-lm(bwt~ad, data=secher)
sum.model_ad<-summary(model_ad)
R2<-sum.model_ad$r.squared
f<-sum.model_ad$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("\nR2_ad= %f and p-value_ad=%f", R2, p.value)
cat(output)
intercept<-model_ad$coefficients[1]
slope<-model_ad$coefficients[2]
output<-sprintf(" slope_ad=%f  intercept_ad=%f",slope, intercept)
cat(output)
png("bwt_ad.png")
plot(bwt~ad, data=secher)
abline(model_ad)
dev.off()

model<-lm(bwt~bpd+ad, data=secher)
print(summary(model))


