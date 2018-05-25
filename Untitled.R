ggplot(snv_all_sorted_fitering_cosequence_gene, aes(fct_infreq(gene), fill=consequence)) +
  geom_bar() +
  theme(axis.text.x=element_text(angle = 90, hjust = 0)) +
  scale_fill_manual(values= rainbow (14))+
  xlab('gene') + 
  ylab('# consequence')

tableplot(all_variants, select = c( sample_id,gene, driver), sortcol=gene)# good
library(tabplot)
ggplot(data = I) + 
  geom_bar(mapping = aes(x = gene, fill = driver))