/**
 * Products API
 * Handles fetching products from external API
 */

// Mock API for products
export const fetchProductsAPI = async () => {
  // Simulate API delay
  await new Promise(resolve => setTimeout(resolve, 1000));
  
  return [
    {
      id: 1,
      title: 'Sample Product 1',
      price: 29.99,
      image: 'https://via.placeholder.com/150',
    },
    {
      id: 2,
      title: 'Sample Product 2', 
      price: 49.99,
      image: 'https://via.placeholder.com/150',
    },
  ];
};
