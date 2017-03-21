import numpy as np
import matplotlib.pyplot as pl
import seaborn as sns
sns.set_style('white')

def lamb(m):
    u = -m - np.sqrt(m**2 - 4 * (m**2 - 1))
    u = u / (2 * (m - 1))
    return -np.log(u)


def prob(x, m):
    lambda_val = lamb(m)
    Z = 1 + 2*np.cosh(lambda_val)
    proba = np.exp(-lambda_val * x) / Z
    return proba


def entropy(m):
    res = 0
    for x in [-1, 0, 1]:
        res += -prob(x, m) * np.log(prob(x, m))
    return res

m_list = np.linspace(-1, 1, 200)
font_size = 45
# PLOT ENTROPY
fig, ax = pl.subplots(figsize=(12, 12))
ax.plot(m_list, entropy(m_list), linewidth=6)
ax.set_xlabel(r'$m$', fontsize=font_size)
ax.set_ylabel(r'$H[P]$', fontsize=font_size)
ax.tick_params(labelsize=font_size - 10)
sns.despine()
fig.savefig('fig1a.png', bbox_inches='tight')
fig.clf()

# PLOT PROBABILITY DISTRIBUTIONS

fig, ax = pl.subplots(figsize=(12, 12))
for x in [-1, 0, 1]:
    ax.plot(m_list, prob(x, m_list), label=r'$x = %d$' % x, linewidth=6)
ax.set_xlabel(r'$m$', fontsize=font_size)
ax.set_ylabel(r'$P(x | m)$', fontsize=font_size)
ax.tick_params(labelsize=font_size - 10)
ax.legend(loc='best', frameon=False, fontsize = font_size - 20)
sns.despine()
fig.savefig('fig1b.png', bbox_inches='tight')
