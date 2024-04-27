import pandas as pd
import numpy as np
import statsmodels
import scipy.stats
import statsmodels.api
from statsmodels.formula.api import ols
from statsmodels.stats.anova import anova_lm

df = pd.DataFrame({
    'SeedProductivity' : [6,7,3,8,5,5,3,7,5,4,3,4],
    'SeedVariety' : ['A','A','A','A','B','B','B','B','C','C','C','C',],
    'FertilizerVariety' : ['W','X','Y','Z','W','X','Y','Z','W','X','Y','Z',]
})

formula = 'SeedProductivity ~ C(SeedVariety) + C(FertilizerVariety)'
model = statsmodels.formula.api.ols(formula,df).fit()
anova_table = anova_lm(model,type=2)
print(anova_table)