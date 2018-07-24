import React from 'react'

//This class is used to create the selection for the payment type
// It uses jsx and React Rendering to create a smooth interface.

class PayTypeSelector extends React.Component {
  constructor(props){
      super(props)
      this.onPayTypeSelected = this.onPayTypeSelected.bind(this);
      this.state = { selectedPayType: null};
  }

    render() {
      return (
        <div className="field">
          <label htmlFor="order_pay_type">Pay type</label>
          <select id="pay_type" name="order[pay_type]">
            <option value="">Select a payment method</option>
            <option value="Check">Check</option>
            <option value="Credit card">Credit card</option>
            <option value="Purchase order">Purchase order</option>
          </select>
        </div>
      );
    }
  }
  export default PayTypeSelector