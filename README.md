# Redux Shopping Cart - React Native

A React Native shopping cart application demonstrating Redux state management with product listing, cart functionality, and navigation.

## Features

- 📱 **Product Listing**: Browse available products with images and prices
- 🛒 **Add to Cart**: Add products to shopping cart with quantity management
- 🔄 **State Management**: Redux Toolkit for centralized state management
- 🧭 **Navigation**: React Navigation for seamless screen transitions
- 💰 **Cart Management**: View, update quantities, and calculate totals
- 🎨 **Modern UI**: Clean and responsive design

## Screenshots

| Product List | Add to Cart | Shopping Cart | Updated Cart |
|--------------|-------------|---------------|--------------|
| ![Product List](./screenshots/product-list.png) | ![Add to Cart](./screenshots/product-added.png) | ![Cart](./screenshots/cart-screen.png) | ![Updated Cart](./screenshots/cart-updated.png) |

## Tech Stack

- **React Native** - Mobile app framework
- **Redux Toolkit** - State management
- **React Navigation** - Navigation library
- **React Native Screens** - Native navigation primitives
- **Metro** - JavaScript bundler

## Project Structure

```
ShoppingCartRedux/
├── src/
│   ├── components/
│   │   └── ProductCard.js
│   ├── screens/
│   │   ├── ProductListScreen.js
│   │   └── CartScreen.js
│   ├── store/
│   │   ├── index.js
│   │   ├── cartSlice.js
│   │   └── productsSlice.js
│   └── data/
│       └── products.js
├── screenshots/
├── App.js
└── README.md
```

## Getting Started

### Prerequisites

- Node.js (>= 14)
- React Native CLI
- iOS Simulator or Android Emulator
- CocoaPods (for iOS)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd ShoppingCartRedux
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Install iOS dependencies** (iOS only)
   ```bash
   cd ios && pod install && cd ..
   ```

4. **Start Metro bundler**
   ```bash
   npm start
   ```

5. **Run the app**
   ```bash
   # For iOS
   npm run ios
   
   # For Android
   npm run android
   ```

## Redux Architecture

### Store Structure
```javascript
{
  products: {
    items: [],
    loading: false,
    error: null
  },
  cart: {
    items: [],
    total: 0
  }
}
```

### Key Actions
- `fetchProducts` - Load product data
- `addToCart` - Add product to cart
- `removeFromCart` - Remove product from cart
- `updateQuantity` - Update item quantity
- `clearCart` - Clear all cart items

## Development

### Available Scripts

- `npm start` - Start Metro bundler
- `npm run ios` - Run on iOS simulator
- `npm run android` - Run on Android emulator
- `npm run lint` - Run ESLint
- `npm test` - Run tests

### Debugging

1. **Redux DevTools**: Enable for state inspection
2. **Flipper**: Use for network and Redux debugging
3. **Metro Logs**: Check terminal for bundler issues

### Common Issues

1. **Metro Cache**: Clear with `npm start -- --reset-cache`
2. **iOS Build**: Clean with `cd ios && xcodebuild clean && cd ..`
3. **Android Build**: Clean with `cd android && ./gradlew clean && cd ..`

## Key Learning Points

### Redux Concepts Demonstrated
- **Store Configuration** with Redux Toolkit
- **Slice Pattern** for organizing state
- **Async Thunks** for API calls
- **Immutable Updates** with Immer
- **Component Integration** with hooks

### React Native Integration
- **Navigation Setup** with Stack Navigator
- **Native Module Linking** for dependencies
- **Metro Configuration** for asset handling
- **Provider Pattern** for state access

## Troubleshooting

### White Screen Issue
Ensure proper navigation setup in `App.js`:
```javascript
<Provider store={store}>
  <NavigationContainer>
    <Stack.Navigator>
      {/* Your screens */}
    </Stack.Navigator>
  </NavigationContainer>
</Provider>
```

### Asset Resolution
Create `assets/` directory for local images or use remote URLs.

### Native Module Errors
Reinstall and relink dependencies:
```bash
npm install
cd ios && pod install && cd ..
```

## Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open Pull Request


## Acknowledgments

- React Native team for the framework
- Redux team for state management tools
- React Navigation team for navigation library

---

**Note**: This is a learning project demonstrating Redux concepts in React Native. For production apps, consider additional features like error boundaries, loading states, and comprehensive testing.
