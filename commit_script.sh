#!/bin/bash

# Redux Shopping Cart - Git Commit Script
# This script executes all commits in the proper order

echo "🚀 Starting Redux Shopping Cart commit sequence..."

# 1. Initial project setup
echo "📦 Commit 1: Initial project setup"
git add .
git commit -m "feat: initialize React Native project with Redux Toolkit

- Set up basic React Native project structure
- Add Redux Toolkit and React Navigation dependencies
- Configure initial project files and package.json"

# 2. Redux store configuration
echo "🏪 Commit 2: Redux store configuration"
git add src/store/
git commit -m "feat: configure Redux store with products and cart slices

- Create store configuration with configureStore()
- Add productsSlice with fetchProducts async thunk
- Add cartSlice with add/remove/update actions
- Set up proper state structure for products and cart"

# 3. Product components
echo "🛍️ Commit 3: Product components"
git add src/components/ src/data/
git commit -m "feat: implement ProductCard component and sample data

- Create reusable ProductCard component with styling
- Add sample product data with images and prices
- Implement add to cart functionality with Redux integration
- Add proper styling for product display"

# 4. Product list screen
echo "📱 Commit 4: Product list screen"
git add src/screens/ProductListScreen.js
git commit -m "feat: create ProductListScreen with Redux integration

- Implement product listing with useSelector hook
- Add loading states and error handling
- Connect dispatch for cart actions
- Style product grid layout with FlatList"

# 5. Cart screen implementation
echo "🛒 Commit 5: Cart screen implementation"
git add src/screens/CartScreen.js
git commit -m "feat: implement CartScreen with quantity management

- Create cart screen showing added items
- Add quantity update and remove functionality
- Calculate and display cart total
- Implement empty cart state handling"

# 6. Navigation setup
echo "🧭 Commit 6: Navigation setup"
git add App.js
git commit -m "feat: configure React Navigation with Stack Navigator

- Set up NavigationContainer and Stack Navigator
- Add ProductListScreen and CartScreen routes
- Configure header styling and navigation options
- Integrate Redux Provider with navigation"

# 7. Fix asset resolution
echo "🖼️ Commit 7: Fix asset resolution"
git add metro.config.js assets/
git commit -m "fix: resolve asset loading and Metro configuration issues

- Update metro.config.js for proper asset handling
- Add placeholder images to assets directory
- Fix image source resolution in ProductCard
- Configure asset extensions and source extensions"

# 8. Fix native module linking
echo "🔗 Commit 8: Fix native module linking"
git add ios/ android/
git commit -m "fix: resolve native module registration errors

- Link React Navigation native dependencies
- Update iOS AppDelegate for proper module registration
- Run pod install for iOS dependencies
- Fix 'module not registered in native binary' errors"

# 9. UI improvements and styling
echo "🎨 Commit 9: UI improvements and styling"
git add src/components/ src/screens/
git commit -m "style: enhance UI design and user experience

- Improve ProductCard styling with better layout
- Add cart badge and navigation improvements
- Enhance button states (Add to Cart vs In Cart)
- Add loading indicators and error states"

# 10. Documentation and final touches
echo "📚 Commit 10: Documentation and final touches"
git add README.md Lab_Report.md screenshots/
git commit -m "docs: add comprehensive documentation and lab report

- Create detailed README with setup instructions
- Add lab report documenting challenges and solutions
- Include screenshots of app functionality
- Document Redux architecture and learning outcomes"

echo "✅ All commits completed successfully!"
echo "📊 Git log summary:"
git log --oneline -10

echo ""
echo "🎉 Redux Shopping Cart project commit history created!"
echo "💡 Next steps:"
echo "   1. Take screenshots of your app"
echo "   2. Add them to screenshots/ folder"
echo "   3. Run: git add screenshots/ && git commit --amend --no-edit"
echo "   4. Convert Lab_Report.md to PDF using pandoc"