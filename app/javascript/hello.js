document.querySelectorAll('.currency-switcher button').forEach(button => {
    button.addEventListener('click', () => {
      const currency = button.dataset.currency;
      const amount = document.querySelector('.amount');
  
      // Update the amount div to display the amount in the selected currency.
      amount.innerHTML = `${currency} ${convertAmount(amount.innerHTML, currency)}`;
    });
  });
  
  async function convertAmount(amount, currency) {
    if (currency === 'USD') {
      return amount;
    } else {
      // Use an API to convert the amount to USD.
      const exchangeRate = await fetch('https://api.exchangeratesapi.io/latest?base=USD&symbols=' + currency).then(response => response.json());
      return amount / exchangeRate.rates[currency];
    }
  }
  