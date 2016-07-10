# coding: utf-8
import numpy as np
import matplotlib.pyplot as pl
import matplotlib.cm as cm
import seaborn as sns
from matplotlib import gridspec

sns.set_style('white')
data_mzm = np.loadtxt('mzm_m1_m2_beta.d')

years = data_mzm[:, 0].astype(int)
mzm = data_mzm[:, 1]

colors = cm.rainbow
font_larger = 16
font_smaller = 8

fig = pl.figure(figsize=(12, 8))

ax = fig.add_subplot(111)
leg_1 = ax.plot(years, mzm, '-o', color=colors(0.2), mew = 0, ms=6, lw=2, alpha=0.65, label='MZM')
ax.set_xlabel('Years', fontsize = font_larger)
ax.set_ylabel('Velocity of MZM money', fontsize = font_larger)
ax.set_xlim([years[0] - 1, years[-1] + 1])


ax2 = ax.twinx()
beta = data_mzm[:,-1]
leg_2 = ax2.plot(years, beta, '-o', color=colors(0.92), mew=0, ms=6, lw=2, alpha=0.65, label=r'$\beta$')
ax2.set_ylabel(r'$\beta$', fontsize = font_larger)
ax.set_xlim([years[0] - 1, years[-1] + 1])

leg_figs = leg_1 + leg_2
legs = [l.get_label() for l in leg_figs]
ax2.legend(leg_figs, legs, loc='best', frameon=False)
fig.savefig('data_1.png', bbox_inches='tight')
fig.clear()

fig = pl.figure(figsize=(8, 8))
data_2 = data_mzm[:, [1, 4]]

ax_inset = fig.add_subplot(111)
ax_inset.plot(data_2[:, 1], data_2[:, 0], '-o', color=colors(0.4), mew=0, ms=6, lw=2, alpha=0.75)
ax_inset.set_xlabel(r'$\beta$', fontsize=font_larger)
ax_inset.set_ylabel('Velocity of MZM money', fontsize=font_larger)
fig.savefig('data_2.png', bbox_inches='tight')
fig.clear()

data_model = np.loadtxt('beta_VS_Velocity.dat')

fig = pl.figure(figsize=(16, 8))
ax3 = fig.add_subplot(111)

leg_1 = ax3.plot(data_2[:, 1], data_2[:, 0], '-o', color=colors(0.2), mew=0, ms=7, lw=2, alpha=0.75, label='MZM data')
ax3.set_xlabel(r'$\beta$', fontsize=font_larger)
ax3.set_ylabel('Velocity of money', fontsize=font_larger)
ax3.set_xlim([1., 2.])
ax3.set_ylim([0., 3.5])

ax3_inv = ax3.twinx()
leg_2 = ax3_inv.plot(data_model[:, 0], data_model[:, 1], '-', color='red', mew=0, ms=6, lw=3, alpha=0.75, label='Average liquidity for the model')
ax3_inv.set_ylabel('Liquidity', fontsize=font_larger)
ax3_inv.set_xlim([1., 2.])
ax3_inv.set_ylim([0, 0.7])

leg_figs = leg_1 + leg_2
legs = [l.get_label() for l in leg_figs]
ax3.legend(leg_figs, legs, loc='upper left', fontsize=15, frameon=False)

fig.savefig('data_model.png', bbox_inches='tight')
fig.clear()
