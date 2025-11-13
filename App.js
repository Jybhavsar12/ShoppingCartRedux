import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import React from 'react';
import 'react-native-gesture-handler';
import { Provider } from 'react-redux';
import CartScreen from './src/screens/CartScreen';
import ProductListScreen from './src/screens/ProductListScreen';
import { store } from './src/store';
// ... other imports

const Stack = createStackNavigator();

export default function App() {
  return (
    <Provider store={store}>
      <NavigationContainer>
        <Stack.Navigator
          initialRouteName="Products"
          screenOptions={{
            headerStyle: {
              backgroundColor: '#3498db',
            },
            headerTintColor: '#fff',
            headerTitleStyle: {
              fontWeight: 'bold',
            },
          }}
        >
          <Stack.Screen
            name="Products"
            component={ProductListScreen}
            options={{ title: 'Shop' }}
          />
          <Stack.Screen
            name="Cart"
            component={CartScreen}
            options={{ title: 'Shopping Cart' }}
          />
        </Stack.Navigator>
      </NavigationContainer>
    </Provider>
  );
}
