module NormalizeAddTxid
  extend ActiveSupport::Concern

  def normalize_decode_address(address)
    Peatio::Tron::Convertor.base58_decode(address)
  end

  def normalize_encode_address(hexstring)
    Peatio::Tron::Convertor.base58_encode(hexstring)
  end

  def normalize_txid(txid)
    txid
  end

  def from_hex(hexstring)
    Peatio::Tron::Convertor.from_hex(hexstring)
  end

  def to_hex(string)
    Peatio::Tron::Convertor.to_hex(string)
  end

  def abi_encode(*args)
    args.each_with_object('') do |arg, data|
      data.concat(arg.gsub(/\A0x/, '').rjust(64, '0'))
    end
  end
end
