[ 'Yay Apples',
  'Spiced Pear',
  'WTF Mint?'
].each do |cider_name|
  Cider.find_or_create_by!(name: cider_name)
end
