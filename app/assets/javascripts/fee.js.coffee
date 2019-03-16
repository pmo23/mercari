$ ->
  formatter = new (Intl.NumberFormat)('ja-JP',
  style: 'currency'
  currency: 'JPY')

  $input = $('.input-price')
  $fee = $('.input-fee')
  $profit = $('.input-profit')
  $input.on 'input', (event) ->
    value = $input.val()
    if value >= 300
      fee = value * 0.1
      $fee.text   formatter.format fee
      profit = value * 0.9
      $profit.text formatter.format profit
    else
      $fee.text "---"
      $profit.text "---"
    return
  return
