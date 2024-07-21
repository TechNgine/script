
#!/bin/bash
sudo apt install tree -y
# Function to echo and sleep
function echo_sleep {
    echo "$1"
    sleep 4
}

# Navigate to Documents directory
echo_sleep "Navigating to Documents directory..."
cd ~/Documents || exit 1
echo_sleep "Current directory: $(pwd)"

# Create PlanetGreen directory
echo_sleep "Creating PlanetGreen directory..."
mkdir -p PlanetGreen
cd PlanetGreen || exit 1
echo_sleep "Current directory: $(pwd)"

# Create subdirectories Earth, Fire, Wind, Water, Heart
echo_sleep "Creating subdirectories: Earth Fire Wind Water Heart..."
mkdir -p Earth Fire Wind Water Heart
echo_sleep "Current directory structure:"
tree

# Navigate into Earth directory
echo_sleep "Navigating into Earth directory..."
cd Earth || exit 1
echo_sleep "Current directory: $(pwd)"

# Create subdirectories under IT
echo_sleep "Creating subdirectories under IT: IT Executive HR Finance Operations..."
mkdir -p IT Executive HR Finance Operations
echo_sleep "Current directory structure:"
tree

# Navigate into IT directory
echo_sleep "Navigating into IT directory..."
cd IT || exit 1
echo_sleep "Current directory: $(pwd)"

# Create subdirectories under IT further
echo_sleep "Creating subdirectories under IT: Management Engineering SystemsAdministration Security Networking..."
mkdir -p Management Engineering "Systems Administration" Security Networking
echo_sleep "Current directory structure:"
tree

# Navigate up to HR directory
echo_sleep "Navigating up to HR directory..."
cd .. || exit 1
cd HR || exit 1
echo_sleep "Current directory: $(pwd)"

# Create nested subdirectories under HR
echo_sleep "Creating nested subdirectories under HR: Management Audit Payroll Benefits Policies/2023 Policies/2024..."
mkdir -p Management Audit Payroll Benefits Policies/2023 Policies/2024
echo_sleep "Current directory structure:"
tree

# Navigate up to Finance directory
echo_sleep "Navigating up to Finance directory..."
cd .. || exit 1
cd Finance || exit 1
echo_sleep "Current directory: $(pwd)"

# Create nested subdirectories under Finance
echo_sleep "Creating nested subdirectories under Finance: Management ExpenseReports Budgets/Actual Budgets/Proposed..."
mkdir -p Management "Expense Reports" Budgets/Actual Budgets/Proposed
echo_sleep "Current directory structure:"
tree

# Navigate into Expense Reports directory
echo_sleep "Navigating into Expense Reports directory..."
cd "Expense Reports" || exit 1
echo_sleep "Current directory: $(pwd)"

# Create subdirectories for each month
echo_sleep "Creating subdirectories for each month under Expense Reports..."
mkdir -p January February March April May June July August September October November December
echo_sleep "Current directory structure:"
tree

# Navigate up to Operations directory
echo_sleep "Navigating up to Operations directory..."
cd ../../Operations || exit 1
echo_sleep "Current directory: $(pwd)"

# Create subdirectories under Operations
echo_sleep "Creating subdirectories under Operations: Management CustomerCare Sales..."
mkdir -p Management "Customer Care" Sales
echo_sleep "Current directory structure:"
tree

# Navigate back to PlanetGreen directory
echo_sleep "Navigating back to PlanetGreen directory..."
cd ..
echo_sleep "Current directory: $(pwd)"

# Copy all directories to Wind, Fire, Water, Heart
echo_sleep "Copying all directories to Wind, Fire, Water, Heart..."
cp -r * ../Wind
cp -r * ../Fire
cp -r * ../Water
cp -r * ../Heart
echo_sleep "Copy operation complete."

# Final directory structure visualization
echo_sleep "Final directory structure in PlanetGreen:"
tree
