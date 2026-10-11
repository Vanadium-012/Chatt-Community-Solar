# Importing the libraries
import pandas as pd
import matplotlib.pyplot as plt

# 1. Dataset Importing
df = pd.read_csv('/home/obsidian/Downloads/Temperature-Time-Series-2019-2025-InternalCar-Temperature.csv', usecols=['Internal Car Temperature Fahrenheit', 'Date'])

# Building the Histogram
# bins=30 splits your temperatures into 25 neat bars. 
# edgecolor='white' separates the bars so they are easy to read.
ax = df['Internal Car Temperature Fahrenheit'].plot.hist(bins=30, color='orange', edgecolor='white', figsize=(10, 6))

# Customizing the Attributes
ax.set_title("Distribution of Internal Car Temperatures (2019-2025)", fontsize=14)
ax.set_xlabel("Temperature (Fahrenheit)")
ax.set_ylabel("Frequency (Count of Records)")
ax.grid(True, axis='y', linestyle='--', alpha=0.5)

# Clean up layout
plt.tight_layout()

# 4. Save and Show
plt.savefig('Internal_Car_Temperatures-Histogram2019_2025.png')
plt.show()