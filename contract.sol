#
#  Panoramix v4 Oct 2019 
#  Decompiled source of ropsten:0xBd598110a9786b264a325AbF0bb4Aece58ca7024
# 
#  Let's make the world open source 
# 
#
#  I failed with these: 
#  - tokensOfOwner(address _owner)
#  - tokenURI(uint256 _tokenId)
#  All the rest is below.
#

const unknowna217fddf = 0
const unknownd5391393 = 0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956

def storage:
  stor0 is array of struct at storage 0
  stor1 is array of struct at storage 1
  ownerOf is mapping of addr at storage 2
  balanceOf is mapping of uint256 at storage 3
  approved is mapping of addr at storage 4
  stor5 is mapping of uint8 at storage 5
  tokenOfOwnerByIndex is mapping of uint256 at storage 6
  stor7 is mapping of uint256 at storage 7
  tokenByIndex is array of uint256 at storage 8
  stor9 is mapping of uint256 at storage 9
  stor10 is mapping of struct at storage 10
  unknown248a9ca3 is mapping of struct at storage 11
  unknown9010d07c is array of struct at storage 12
  stor13 is array of struct at storage 13
  stor14 is array of struct at storage 14

def getApproved(uint256 _tokenId): # not payable
  require calldata.size - 4 >=′ 32
  if not ownerOf[_tokenId]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
  return approved[_tokenId]

def totalSupply(): # not payable
  return tokenByIndex.length

def unknown248a9ca3(uint256 _param1): # not payable
  require calldata.size - 4 >=′ 32
  return uint256(unknown248a9ca3[_param1].field_256)

def tokenOfOwnerByIndex(address _owner, uint256 _index): # not payable
  require calldata.size - 4 >=′ 64
  require _owner == _owner
  if not _owner:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
  if _index >= balanceOf[addr(_owner)]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
  return tokenOfOwnerByIndex[addr(_owner)][_index]

def tokenByIndex(uint256 _index): # not payable
  require calldata.size - 4 >=′ 32
  if _index >= tokenByIndex.length:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
  return tokenByIndex[_index]

def ownerOf(uint256 _tokenId): # not payable
  require calldata.size - 4 >=′ 32
  if not ownerOf[_tokenId]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
  return ownerOf[_tokenId]

def balanceOf(address _owner): # not payable
  require calldata.size - 4 >=′ 32
  require _owner == _owner
  if not _owner:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
  return balanceOf[addr(_owner)]

def unknown9010d07c(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=′ 64
  if _param2 >= uint256(unknown9010d07c[_param1].field_0):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
  return addr(unknown9010d07c[_param1][_param2].field_0)

def unknown91d14854(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=′ 64
  require _param2 == addr(_param2)
  return bool(uint8(unknown248a9ca3[_param1][addr(_param2)].field_0))

def unknownca15c873(uint256 _param1): # not payable
  require calldata.size - 4 >=′ 32
  return uint256(unknown9010d07c[_param1].field_0)

def isApprovedForAll(address _owner, address _operator): # not payable
  require calldata.size - 4 >=′ 64
  require _owner == _owner
  require _operator == _operator
  return bool(stor5[addr(_owner)][addr(_operator)])

#
#  Regular functions
#

def _fallback() payable: # default function
  revert

def setApprovalForAll(address _to, bool _approved): # not payable
  require calldata.size - 4 >=′ 64
  require _to == _to
  require _approved == _approved
  if _to == caller:
      revert with 0, 'ERC721: approve to caller'
  stor5[caller][addr(_to)] = uint8(_approved)
  log ApprovalForAll(
        address owner=_approved,
        address operator=caller,
        bool approved=_to)

def unknown36568abe(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=′ 64
  require _param2 == addr(_param2)
  if addr(_param2) != caller:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
  if uint8(unknown248a9ca3[_param1][addr(_param2)].field_0):
      uint8(unknown248a9ca3[_param1][addr(_param2)].field_0) = 0
      log 0xf6391f5c: _param1, addr(_param2), caller

def supportsInterface(bytes4 _interfaceId): # not payable
  require calldata.size - 4 >=′ 32
  require _interfaceId == Mask(32, 224, _interfaceId)
  if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId):
      return True
  if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId):
      return True
  if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId):
      return True
  if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId):
      return True
  if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId):
      return True
  return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId))

def unknownf582b960(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=′ 64
  idx = 0
  while idx < uint256(stor14[_param1].field_0):
      if idx >= uint256(stor13[_param1].field_0):
          revert with 0, 50
      if addr(stor13[_param1][idx].field_0) == caller:
          if idx >= uint256(stor14[_param1].field_0):
              revert with 0, 50
          uint256(stor14[_param1][idx].field_0) = _param2
          return 1
      if idx == -1:
          revert with 0, 17
      mem[0] = _param1
      mem[32] = 14
      idx = idx + 1
      continue 
  return 1

def approve(address _spender, uint256 _value): # not payable
  require calldata.size - 4 >=′ 64
  require _spender == _spender
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
  if _spender == ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
  if ownerOf[_value] != caller:
      if not stor5[stor2[_value]][caller]:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                      'ERC721: approve caller is not owner nor approved for all'
  approved[_value] = _spender
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
  log Approval(
        address owner=ownerOf[_value],
        address spender=_spender,
        uint256 value=_value)

def unknown2f2ff15d(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=′ 64
  require _param2 == addr(_param2)
  if not uint8(unknown248a9ca3[uint256(unknown248a9ca3[_param1].field_256)][caller].field_0):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
  if not uint8(unknown248a9ca3[_param1][addr(_param2)].field_0):
      uint8(unknown248a9ca3[_param1][addr(_param2)].field_0) = 1
      log 0x2f878811: _param1, addr(_param2), caller
  if not uint256(unknown9010d07c[_param1][1][addr(_param2)].field_0):
      uint256(unknown9010d07c[_param1].field_0)++
      addr(unknown9010d07c[_param1][uint256(unknown9010d07c[_param1].field_0)].field_0) = addr(_param2)
      Mask(96, 0, unknown9010d07c[_param1][uint256(unknown9010d07c[_param1].field_0)].field_160) = 0
      uint256(unknown9010d07c[_param1][1][addr(_param2)].field_0) = uint256(unknown9010d07c[_param1].field_0)

def unknown303024df(uint256 _param1): # not payable
  require calldata.size - 4 >=′ 32
  if uint256(stor14[_param1].field_0):
      mem[128] = uint256(stor14[_param1].field_0)
      idx = 128
      s = 0
      while (32 * uint256(stor14[_param1].field_0)) + 96 > idx:
          mem[idx + 32] = uint256(stor14[_param1][s].field_256)
          idx = idx + 32
          s = s + 1
          continue 
      return Array(len=uint256(stor14[_param1].field_0), data=mem[128 len 32 * uint256(stor14[_param1].field_0)])
  mem[(32 * uint256(stor14[_param1].field_0)) + 128] = 32
  mem[(32 * uint256(stor14[_param1].field_0)) + 160] = uint256(stor14[_param1].field_0)
  mem[(32 * uint256(stor14[_param1].field_0)) + 192 len 32 * uint256(stor14[_param1].field_0)] = mem[128 len 32 * uint256(stor14[_param1].field_0)]
  return memory
    from (32 * uint256(stor14[_param1].field_0)) + 128
     len (96 * uint256(stor14[_param1].field_0)) + 64

def unknown1c6fe816(uint256 _param1): # not payable
  require calldata.size - 4 >=′ 32
  mem[64] = (32 * uint256(stor13[_param1].field_0)) + 128
  mem[96] = uint256(stor13[_param1].field_0)
  if not uint256(stor13[_param1].field_0):
      mem[(32 * uint256(stor13[_param1].field_0)) + 128] = 32
      mem[(32 * uint256(stor13[_param1].field_0)) + 160] = uint256(stor13[_param1].field_0)
      idx = 0
      s = (32 * uint256(stor13[_param1].field_0)) + 192
      t = 128
      while idx < uint256(stor13[_param1].field_0):
          mem[s] = mem[t + 12 len 20]
          idx = idx + 1
          s = s + 32
          t = t + 32
          continue 
      return memory
        from (32 * uint256(stor13[_param1].field_0)) + 128
         len (96 * uint256(stor13[_param1].field_0)) + 64
  mem[128] = addr(stor13[_param1].field_0)
  idx = 128
  s = 0
  while (32 * uint256(stor13[_param1].field_0)) + 96 > idx:
      mem[idx + 32] = addr(stor13[_param1][s].field_256)
      idx = idx + 32
      s = s + 1
      continue 
  mem[(32 * uint256(stor13[_param1].field_0)) + 128] = 32
  mem[(32 * uint256(stor13[_param1].field_0)) + 160] = uint256(stor13[_param1].field_0)
  idx = 0
  s = mem[64] + 64
  t = 128
  while idx < uint256(stor13[_param1].field_0):
      mem[s] = mem[t + 12 len 20]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  return memory
    from mem[64]
     len (64 * uint256(stor13[_param1].field_0)) + -mem[64] + 192

def unknownd547741f(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=′ 64
  require _param2 == addr(_param2)
  if not uint8(unknown248a9ca3[uint256(unknown248a9ca3[_param1].field_256)][caller].field_0):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
  if uint8(unknown248a9ca3[_param1][addr(_param2)].field_0):
      uint8(unknown248a9ca3[_param1][addr(_param2)].field_0) = 0
      log 0xf6391f5c: _param1, addr(_param2), caller
  if uint256(unknown9010d07c[_param1][1][addr(_param2)].field_0):
      if uint256(unknown9010d07c[_param1][1][addr(_param2)].field_0) < 1:
          revert with 0, 17
      if uint256(unknown9010d07c[_param1].field_0) < 1:
          revert with 0, 17
      if uint256(unknown9010d07c[_param1].field_0) - 1 >= uint256(unknown9010d07c[_param1].field_0):
          revert with 0, 50
      if uint256(unknown9010d07c[_param1][1][addr(_param2)].field_0) - 1 >= uint256(unknown9010d07c[_param1].field_0):
          revert with 0, 50
      uint256(unknown9010d07c[_param1][uint256(unknown9010d07c[_param1][1][addr(_param2)].field_0)].field_0) = uint256(unknown9010d07c[_param1][uint256(unknown9010d07c[_param1].field_0)].field_0)
      if 1 > !(uint256(unknown9010d07c[_param1][1][addr(_param2)].field_0) - 1):
          revert with 0, 17
      uint256(unknown9010d07c[_param1][1][uint256(unknown9010d07c[_param1][uint256(unknown9010d07c[_param1].field_0)].field_0)].field_0) = uint256(unknown9010d07c[_param1][1][addr(_param2)].field_0)
      if not uint256(unknown9010d07c[_param1].field_0):
          revert with 0, 49
      uint256(unknown9010d07c[_param1][uint256(unknown9010d07c[_param1].field_0)].field_0) = 0
      uint256(unknown9010d07c[_param1].field_0)--
      uint256(unknown9010d07c[_param1][1][addr(_param2)].field_0) = 0

def transferFrom(address _from, address _to, uint256 _value): # not payable
  require calldata.size - 4 >=′ 96
  require _from == _from
  require _to == _to
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
  if ownerOf[_value] != caller:
      if not ownerOf[_value]:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
      if approved[_value] != caller:
          if not stor5[stor2[_value]][caller]:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
  if ownerOf[_value] != _from:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
  if not _to:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
  if not _from:
      stor9[_value] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _value
  else:
      if _from != _to:
          if not _from:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
          if balanceOf[addr(_from)] < 1:
              revert with 0, 17
          if balanceOf[addr(_from)] - 1 != stor7[_value]:
              tokenOfOwnerByIndex[addr(_from)][stor7[_value]] = tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1]
              stor7[stor6[addr(_from)][stor3[addr(_from)] - 1]] = stor7[_value]
          stor7[_value] = 0
          tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1] = 0
  if _to:
      if _to != _from:
          if not _to:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
          tokenOfOwnerByIndex[addr(_to)][stor3[addr(_to)]] = _value
          stor7[_value] = balanceOf[addr(_to)]
  else:
      if tokenByIndex.length < 1:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[_value] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[_value]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[_value]
      stor9[_value] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  approved[_value] = 0
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
  log Approval(
        address owner=ownerOf[_value],
        address spender=0,
        uint256 value=_value)
  if balanceOf[addr(_from)] < 1:
      revert with 0, 17
  balanceOf[addr(_from)]--
  if balanceOf[addr(_to)] > -2:
      revert with 0, 17
  balanceOf[addr(_to)]++
  ownerOf[_value] = _to
  log Transfer(
        address from=_from,
        address to=_to,
        uint256 value=_value)

def safeTransferFrom(address _from, address _to, uint256 _tokenId): # not payable
  require calldata.size - 4 >=′ 96
  require _from == _from
  require _to == _to
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: operator query for nonexistent token'
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: owner query for nonexistent token'
  if ownerOf[_tokenId] != caller:
      if not ownerOf[_tokenId]:
          revert with 0, 'ERC721: approved query for nonexistent token'
      if approved[_tokenId] != caller:
          if not stor5[stor2[_tokenId]][caller]:
              revert with 0, 'ERC721: transfer caller is not owner nor approved'
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: owner query for nonexistent token'
  if ownerOf[_tokenId] != _from:
      revert with 0, 'ERC721: transfer of token that is not own'
  if not _to:
      revert with 0, 'ERC721: transfer to the zero address'
  if not _from:
      stor9[_tokenId] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _tokenId
  else:
      if _from != _to:
          if not _from:
              revert with 0, 'ERC721: balance query for the zero address'
          if balanceOf[addr(_from)] < 1:
              revert with 0, 17
          if balanceOf[addr(_from)] - 1 != stor7[_tokenId]:
              tokenOfOwnerByIndex[addr(_from)][stor7[_tokenId]] = tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1]
              stor7[stor6[addr(_from)][stor3[addr(_from)] - 1]] = stor7[_tokenId]
          stor7[_tokenId] = 0
          tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1] = 0
  if _to:
      if _to != _from:
          if not _to:
              revert with 0, 'ERC721: balance query for the zero address'
          tokenOfOwnerByIndex[addr(_to)][stor3[addr(_to)]] = _tokenId
          stor7[_tokenId] = balanceOf[addr(_to)]
  else:
      if tokenByIndex.length < 1:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[_tokenId] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[_tokenId]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[_tokenId]
      stor9[_tokenId] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  approved[_tokenId] = 0
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: owner query for nonexistent token'
  log Approval(
        address owner=ownerOf[_tokenId],
        address spender=0,
        uint256 value=_tokenId)
  if balanceOf[addr(_from)] < 1:
      revert with 0, 17
  balanceOf[addr(_from)]--
  if balanceOf[addr(_to)] > -2:
      revert with 0, 17
  balanceOf[addr(_to)]++
  ownerOf[_tokenId] = _to
  log Transfer(
        address from=_from,
        address to=_to,
        uint256 value=_tokenId)
  if ext_code.size(_to):
      require ext_code.size(_to)
      call _to.onERC721Received(address operator, address from, uint256 tokenId, bytes data) with:
           gas gas_remaining wei
          args 0, uint32(caller), addr(_from), _tokenId, 128, 0
      if not ext_call.success:
          if not return_data.size:
              revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
          if not return_data.size:
              revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=′ 32
      require ext_call.return_data == Mask(32, 224, ext_call.return_data[0])
      if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
          revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'

def safeTransferFrom(address _from, address _to, uint256 _tokenId, bytes _data): # not payable
  require calldata.size - 4 >=′ 128
  require _from == _from
  require _to == _to
  require _data <= 18446744073709551615
  require calldata.size >′ _data + 35
  if _data.length > 18446744073709551615:
      revert with 0, 65
  if ceil32(_data.length) + 128 < 96 or ceil32(_data.length) + 128 > 18446744073709551615:
      revert with 0, 65
  require _data + _data.length + 36 <= calldata.size
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: operator query for nonexistent token'
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: owner query for nonexistent token'
  if ownerOf[_tokenId] != caller:
      if not ownerOf[_tokenId]:
          revert with 0, 'ERC721: approved query for nonexistent token'
      if approved[_tokenId] != caller:
          if not stor5[stor2[_tokenId]][caller]:
              revert with 0, 'ERC721: transfer caller is not owner nor approved'
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: owner query for nonexistent token'
  if ownerOf[_tokenId] != _from:
      revert with 0, 'ERC721: transfer of token that is not own'
  if not _to:
      revert with 0, 'ERC721: transfer to the zero address'
  if not _from:
      stor9[_tokenId] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _tokenId
  else:
      if _from != _to:
          if not _from:
              revert with 0, 'ERC721: balance query for the zero address'
          if balanceOf[addr(_from)] < 1:
              revert with 0, 17
          if balanceOf[addr(_from)] - 1 != stor7[_tokenId]:
              tokenOfOwnerByIndex[addr(_from)][stor7[_tokenId]] = tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1]
              stor7[stor6[addr(_from)][stor3[addr(_from)] - 1]] = stor7[_tokenId]
          stor7[_tokenId] = 0
          tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1] = 0
  if _to:
      if _to != _from:
          if not _to:
              revert with 0, 'ERC721: balance query for the zero address'
          tokenOfOwnerByIndex[addr(_to)][stor3[addr(_to)]] = _tokenId
          stor7[_tokenId] = balanceOf[addr(_to)]
  else:
      if tokenByIndex.length < 1:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[_tokenId] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[_tokenId]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[_tokenId]
      stor9[_tokenId] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  approved[_tokenId] = 0
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: owner query for nonexistent token'
  log Approval(
        address owner=ownerOf[_tokenId],
        address spender=0,
        uint256 value=_tokenId)
  if balanceOf[addr(_from)] < 1:
      revert with 0, 17
  balanceOf[addr(_from)]--
  if balanceOf[addr(_to)] > -2:
      revert with 0, 17
  balanceOf[addr(_to)]++
  ownerOf[_tokenId] = _to
  log Transfer(
        address from=_from,
        address to=_to,
        uint256 value=_tokenId)
  if not ext_code.size(_to):
      stop
  require ext_code.size(_to)
  call _to with:
       gas gas_remaining wei
      args caller, addr(_from), _tokenId, Array(len=_data.length, data=_data[all])
  if not ext_call.success:
      if not return_data.size:
          if not _data.length:
              revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
          revert with _data[all]
      if not return_data.size:
          revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=′ 32
  require not 0, ext_call.return_data[4 len 28]
  revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'

def name(): # not payable
  if bool(stor0.length):
      if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
          revert with 0, 34
      if bool(stor0.length):
          if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
              revert with 0, 34
          if uint255(stor0.length.field_1):
              if 31 < uint255(stor0.length.field_1):
                  mem[128] = uint256(stor0.field_0)
                  idx = 128
                  s = 0
                  while uint255(stor0.length.field_1) + 96 > idx:
                      mem[idx + 32] = uint256(stor0[s].field_256)
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))]), 
              mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
      else:
          if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
              revert with 0, 34
          if stor0.length.field_1 % 128:
              if 31 < stor0.length.field_1 % 128:
                  mem[128] = uint256(stor0.field_0)
                  idx = 128
                  s = 0
                  while stor0.length.field_1 % 128 + 96 > idx:
                      mem[idx + 32] = uint256(stor0[s].field_256)
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))]), 
              mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
      mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
      if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
          mem[uint255(stor0.length.field_1) + ceil32(uint255(stor0.length.field_1)) + 192] = 0
      return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
  if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
      revert with 0, 34
  if bool(stor0.length):
      if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
          revert with 0, 34
      if uint255(stor0.length.field_1):
          if 31 < uint255(stor0.length.field_1):
              mem[128] = uint256(stor0.field_0)
              idx = 128
              s = 0
              while uint255(stor0.length.field_1) + 96 > idx:
                  mem[idx + 32] = uint256(stor0[s].field_256)
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
          mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
  else:
      if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
          revert with 0, 34
      if stor0.length.field_1 % 128:
          if 31 < stor0.length.field_1 % 128:
              mem[128] = uint256(stor0.field_0)
              idx = 128
              s = 0
              while stor0.length.field_1 % 128 + 96 > idx:
                  mem[idx + 32] = uint256(stor0[s].field_256)
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
          mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
  mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
  if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
      mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
  return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 

def symbol(): # not payable
  if bool(stor1.length):
      if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
          revert with 0, 34
      if bool(stor1.length):
          if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
              revert with 0, 34
          if uint255(stor1.length.field_1):
              if 31 < uint255(stor1.length.field_1):
                  mem[128] = uint256(stor1.field_0)
                  idx = 128
                  s = 0
                  while uint255(stor1.length.field_1) + 96 > idx:
                      mem[idx + 32] = uint256(stor1[s].field_256)
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))]), 
              mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
      else:
          if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
              revert with 0, 34
          if stor1.length.field_1 % 128:
              if 31 < stor1.length.field_1 % 128:
                  mem[128] = uint256(stor1.field_0)
                  idx = 128
                  s = 0
                  while stor1.length.field_1 % 128 + 96 > idx:
                      mem[idx + 32] = uint256(stor1[s].field_256)
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))]), 
              mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
      mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
      if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
          mem[uint255(stor1.length.field_1) + ceil32(uint255(stor1.length.field_1)) + 192] = 0
      return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
  if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
      revert with 0, 34
  if bool(stor1.length):
      if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
          revert with 0, 34
      if uint255(stor1.length.field_1):
          if 31 < uint255(stor1.length.field_1):
              mem[128] = uint256(stor1.field_0)
              idx = 128
              s = 0
              while uint255(stor1.length.field_1) + 96 > idx:
                  mem[idx + 32] = uint256(stor1[s].field_256)
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
          mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
  else:
      if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
          revert with 0, 34
      if stor1.length.field_1 % 128:
          if 31 < stor1.length.field_1 % 128:
              mem[128] = uint256(stor1.field_0)
              idx = 128
              s = 0
              while stor1.length.field_1 % 128 + 96 > idx:
                  mem[idx + 32] = uint256(stor1[s].field_256)
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
          mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
  mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
  if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
      mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
  return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 

def mintWithTokenURI(address _to, uint256 _tokenId, string _tokenURI): # not payable
  require calldata.size - 4 >=′ 96
  require _to == _to
  require _tokenURI <= 18446744073709551615
  require _tokenURI + 35 <′ calldata.size
  if _tokenURI.length > 18446744073709551615:
      revert with 0, 65
  if ceil32(_tokenURI.length) + 128 < 96 or ceil32(_tokenURI.length) + 128 > 18446744073709551615:
      revert with 0, 65
  require _tokenURI + _tokenURI.length + 36 <= calldata.size
  mem[128 len _tokenURI.length] = _tokenURI[all]
  mem[_tokenURI.length + 128] = 0
  if not uint8(unknown248a9ca3[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][caller].field_0):
      revert with 0, 'ERC721PresetMinterPauserAutoId: must have minter role to mint'
  if not _to:
      revert with 0, 'ERC721: mint to the zero address'
  if ownerOf[_tokenId]:
      revert with 0, 'ERC721: token already minted'
  stor9[_tokenId] = tokenByIndex.length
  tokenByIndex.length++
  tokenByIndex[tokenByIndex.length] = _tokenId
  if _to:
      if _to:
          if not _to:
              revert with 0, 'ERC721: balance query for the zero address'
          tokenOfOwnerByIndex[addr(_to)][stor3[addr(_to)]] = _tokenId
          stor7[_tokenId] = balanceOf[addr(_to)]
  else:
      if tokenByIndex.length < 1:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[_tokenId] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[_tokenId]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[_tokenId]
      stor9[_tokenId] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  if balanceOf[addr(_to)] > -2:
      revert with 0, 17
  balanceOf[addr(_to)]++
  ownerOf[_tokenId] = _to
  log Transfer(
        address from=0,
        address to=_to,
        uint256 value=_tokenId)
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
  if bool(stor10[_tokenId].field_0):
      if bool(stor10[_tokenId].field_0) == uint255(stor10[_tokenId].field_1) < 32:
          revert with 0, 34
      if not _tokenURI.length:
          uint256(stor10[_tokenId].field_0) = 0
          idx = 0
          while uint255(stor10[_tokenId].field_1) + 31 / 32 > idx:
              uint256(stor10[_tokenId][idx].field_0) = 0
              idx = idx + 1
              continue 
      else:
          uint256(stor10[_tokenId].field_0) = (2 * _tokenURI.length) + 1
          if _tokenURI.length <= 0:
              idx = 0
              while uint255(stor10[_tokenId].field_1) + 31 / 32 > idx:
                  uint256(stor10[_tokenId][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              uint256(stor10[_tokenId].field_0) = mem[128]
              s = 1
              idx = 160
              while _tokenURI.length + 128 > idx:
                  uint256(stor10[_tokenId][s].field_0) = mem[idx]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = (Mask(251, 0, _tokenURI.length - 1) >> 5) + 1
              while uint255(stor10[_tokenId].field_1) + 31 / 32 > idx:
                  uint256(stor10[_tokenId][idx].field_0) = 0
                  idx = idx + 1
                  continue 
  else:
      if bool(stor10[_tokenId].field_0) == stor10[_tokenId].field_1 % 128 < 32:
          revert with 0, 34
      if not _tokenURI.length:
          uint256(stor10[_tokenId].field_0) = 0
          idx = 0
          while stor10[_tokenId].field_1 % 128 + 31 / 32 > idx:
              uint256(stor10[_tokenId][idx].field_0) = 0
              idx = idx + 1
              continue 
      else:
          uint256(stor10[_tokenId].field_0) = (2 * _tokenURI.length) + 1
          if _tokenURI.length <= 0:
              idx = 0
              while stor10[_tokenId].field_1 % 128 + 31 / 32 > idx:
                  uint256(stor10[_tokenId][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              uint256(stor10[_tokenId].field_0) = mem[128]
              s = 1
              idx = 160
              while _tokenURI.length + 128 > idx:
                  uint256(stor10[_tokenId][s].field_0) = mem[idx]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = (Mask(251, 0, _tokenURI.length - 1) >> 5) + 1
              while stor10[_tokenId].field_1 % 128 + 31 / 32 > idx:
                  uint256(stor10[_tokenId][idx].field_0) = 0
                  idx = idx + 1
                  continue 
  mem[ceil32(_tokenURI.length) + 128] = 1
  return Mask(8 * -ceil32(_tokenURI.length) + _tokenURI.length + 32, 0, 0), 
         mem[_tokenURI.length + 160 len -_tokenURI.length + ceil32(_tokenURI.length)]

def burn(uint256 _value): # not payable
  require calldata.size - 4 >=′ 32
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
  if ownerOf[_value] != caller:
      if not ownerOf[_value]:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
      if approved[_value] != caller:
          if not stor5[stor2[_value]][caller]:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
  if ownerOf[_value]:
      if not ownerOf[_value]:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
      if balanceOf[stor2[_value]] < 1:
          revert with 0, 17
      if balanceOf[stor2[_value]] - 1 != stor7[_value]:
          tokenOfOwnerByIndex[stor2[_value]][stor7[_value]] = tokenOfOwnerByIndex[stor2[_value]][stor3[stor2[_value]] - 1]
          stor7[stor6[stor2[_value]][stor3[stor2[_value]] - 1]] = stor7[_value]
      stor7[_value] = 0
      tokenOfOwnerByIndex[stor2[_value]][stor3[stor2[_value]] - 1] = 0
  if tokenByIndex.length < 1:
      revert with 0, 17
  if tokenByIndex.length - 1 >= tokenByIndex.length:
      revert with 0, 50
  if stor9[_value] >= tokenByIndex.length:
      revert with 0, 50
  tokenByIndex[stor9[_value]] = tokenByIndex[tokenByIndex.length]
  stor9[stor8[stor8.length]] = stor9[_value]
  stor9[_value] = 0
  if not tokenByIndex.length:
      revert with 0, 49
  tokenByIndex[tokenByIndex.length] = 0
  tokenByIndex.length--
  approved[_value] = 0
  if not ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
  log Approval(
        address owner=ownerOf[_value],
        address spender=0,
        uint256 value=_value)
  if balanceOf[stor2[_value]] < 1:
      revert with 0, 17
  balanceOf[stor2[_value]]--
  ownerOf[_value] = 0
  log Transfer(
        address from=ownerOf[_value],
        address to=0,
        uint256 value=_value)
  if bool(stor10[_value].field_0):
      if bool(stor10[_value].field_0) == uint255(stor10[_value].field_1) < 32:
          revert with 0, 34
      if uint255(stor10[_value].field_1):
          if bool(stor10[_value].field_0):
              if bool(stor10[_value].field_0) == uint255(stor10[_value].field_1) < 32:
                  revert with 0, 34
              uint256(stor10[_value].field_0) = 0
              if 31 < uint255(stor10[_value].field_1):
                  idx = 0
                  while uint255(stor10[_value].field_1) + 31 / 32 > idx:
                      uint256(stor10[_value][idx].field_0) = 0
                      idx = idx + 1
                      continue 
          else:
              if bool(stor10[_value].field_0) == stor10[_value].field_1 % 128 < 32:
                  revert with 0, 34
              uint256(stor10[_value].field_0) = 0
              if 31 < stor10[_value].field_1 % 128:
                  idx = 0
                  while stor10[_value].field_1 % 128 + 31 / 32 > idx:
                      uint256(stor10[_value][idx].field_0) = 0
                      idx = idx + 1
                      continue 
  else:
      if bool(stor10[_value].field_0) == stor10[_value].field_1 % 128 < 32:
          revert with 0, 34
      if stor10[_value].field_1 % 128:
          if bool(stor10[_value].field_0):
              if bool(stor10[_value].field_0) == uint255(stor10[_value].field_1) < 32:
                  revert with 0, 34
              uint256(stor10[_value].field_0) = 0
              if 31 < uint255(stor10[_value].field_1):
                  idx = 0
                  while uint255(stor10[_value].field_1) + 31 / 32 > idx:
                      uint256(stor10[_value][idx].field_0) = 0
                      idx = idx + 1
                      continue 
          else:
              if bool(stor10[_value].field_0) == stor10[_value].field_1 % 128 < 32:
                  revert with 0, 34
              uint256(stor10[_value].field_0) = 0
              if 31 < stor10[_value].field_1 % 128:
                  idx = 0
                  while stor10[_value].field_1 % 128 + 31 / 32 > idx:
                      uint256(stor10[_value][idx].field_0) = 0
                      idx = idx + 1
                      continue 

def unknown19be9059(): # not payable
  require calldata.size - 4 >=′ 160
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 68).length > 18446744073709551615:
      revert with 0, 65
  if ceil32(('cd', 68).length) + 128 < 96 or ceil32(('cd', 68).length) + 128 > 18446744073709551615:
      revert with 0, 65
  mem[96] = ('cd', 68).length
  require cd('cd', 68).length + 36 <= calldata.size
  mem[128 len ('cd', 68).length] = call.data[cd('cd', 68).length]
  mem[('cd', 68).length + 128] = 0
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 100).length > 18446744073709551615:
      revert with 0, 65
  if (32 * ('cd', 100).length) + 160 < 128 or ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + 160 > 18446744073709551615:
      revert with 0, 65
  mem[ceil32(('cd', 68).length) + 128] = ('cd', 100).length
  require calldata.size >= cd * ('cd', 100).length) + 36
  idx = 0
  s = cd[100] + 36
  t = ceil32(('cd', 68).length) + 160
  while idx < ('cd', 100).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 132).length > 18446744073709551615:
      revert with 0, 65
  if (32 * ('cd', 132).length) + 192 < 160 or ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192 > 18446744073709551615:
      revert with 0, 65
  mem[64] = ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192
  mem[ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + 160] = ('cd', 132).length
  require calldata.size >= cd * ('cd', 132).length) + 36
  idx = 0
  s = cd[132] + 36
  t = ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + 192
  while idx < ('cd', 132).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  if not uint8(unknown248a9ca3[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][caller].field_0):
      revert with 0, 'ERC721PresetMinterPauserAutoId: must have minter role to mint'
  if not addr(cd):
      revert with 0, 'ERC721: mint to the zero address'
  if ownerOf[cd]:
      revert with 0, 'ERC721: token already minted'
  stor9[cd] = tokenByIndex.length
  tokenByIndex.length++
  tokenByIndex[tokenByIndex.length] = cd[36]
  if addr(cd):
      if addr(cd):
          if not addr(cd):
              revert with 0, 'ERC721: balance query for the zero address'
          tokenOfOwnerByIndex[addr(cd)][stor3[addr(cd)]] = cd[36]
          stor7[cd] = balanceOf[addr(cd)]
  else:
      if tokenByIndex.length < 1:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[cd] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[cd]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[cd]
      stor9[cd] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  if balanceOf[addr(cd)] > -2:
      revert with 0, 17
  balanceOf[addr(cd)]++
  ownerOf[cd] = addr(cd)
  log Transfer(
        address from=0,
        address to=addr(cd
        uint256 value=cd
  if not ownerOf[cd]:
      revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
  if bool(stor10[cd].field_0):
      if bool(stor10[cd].field_0) == uint255(stor10[cd].field_1) < 32:
          revert with 0, 34
      if not ('cd', 68).length:
          uint256(stor10[cd].field_0) = 0
          idx = 0
          while uint255(stor10[cd].field_1) + 31 / 32 > idx:
              uint256(stor10[cd][idx].field_0) = 0
              idx = idx + 1
              continue 
          uint256(stor13[cd].field_0) = Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]
          if not Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]:
              idx = 0
              while uint256(stor13[cd].field_0) > idx:
                  uint256(stor13[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              s = 0
              idx = ceil32(('cd', 68).length) + 160
              while ceil32(('cd', 68).length) + (32 * Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]) + 160 > idx:
                  addr(stor13[cd][s].field_0) = mem[idx + 12 len 20]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = Mask(251, 0, (32 * Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]) + 31) >> 5
              while uint256(stor13[cd].field_0) > idx:
                  uint256(stor13[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          uint256(stor14[cd].field_0) = ('cd', 132).length
          if not ('cd', 132).length:
              idx = 0
              while uint256(stor14[cd].field_0) > idx:
                  uint256(stor14[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              s = 0
              idx = ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + 192
              while ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192 > idx:
                  uint256(stor14[cd][s].field_0) = mem[idx]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
              while uint256(stor14[cd].field_0) > idx:
                  uint256(stor14[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
      else:
          uint256(stor10[cd].field_0) = (2 * ('cd', 68).length) + 1
          if ('cd', 68).length <= 0:
              idx = 0
              while uint255(stor10[cd].field_1) + 31 / 32 > idx:
                  uint256(stor10[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              uint256(stor10[cd].field_0) = mem[128]
              s = 1
              idx = 160
              while ('cd', 68).length + 128 > idx:
                  uint256(stor10[cd][s].field_0) = mem[idx]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = (Mask(251, 0, ('cd', 68).length - 1) >> 5) + 1
              while uint255(stor10[cd].field_1) + 31 / 32 > idx:
                  uint256(stor10[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          uint256(stor13[cd].field_0) = Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]
          if not Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]:
              idx = 0
              while uint256(stor13[cd].field_0) > idx:
                  uint256(stor13[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              s = 0
              idx = ceil32(('cd', 68).length) + 160
              while ceil32(('cd', 68).length) + (32 * Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]) + 160 > idx:
                  addr(stor13[cd][s].field_0) = mem[idx + 12 len 20]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = Mask(251, 0, (32 * Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]) + 31) >> 5
              while uint256(stor13[cd].field_0) > idx:
                  uint256(stor13[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          uint256(stor14[cd].field_0) = ('cd', 132).length
          if not ('cd', 132).length:
              idx = 0
              while uint256(stor14[cd].field_0) > idx:
                  uint256(stor14[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              s = 0
              idx = ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + 192
              while ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192 > idx:
                  uint256(stor14[cd][s].field_0) = mem[idx]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
              while uint256(stor14[cd].field_0) > idx:
                  uint256(stor14[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
  else:
      if bool(stor10[cd].field_0) == stor10[cd].field_1 % 128 < 32:
          revert with 0, 34
      if not ('cd', 68).length:
          uint256(stor10[cd].field_0) = 0
          idx = 0
          while stor10[cd].field_1 % 128 + 31 / 32 > idx:
              uint256(stor10[cd][idx].field_0) = 0
              idx = idx + 1
              continue 
          uint256(stor13[cd].field_0) = Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]
          if not Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]:
              idx = 0
              while uint256(stor13[cd].field_0) > idx:
                  uint256(stor13[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              s = 0
              idx = ceil32(('cd', 68).length) + 160
              while ceil32(('cd', 68).length) + (32 * Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]) + 160 > idx:
                  addr(stor13[cd][s].field_0) = mem[idx + 12 len 20]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = Mask(251, 0, (32 * Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]) + 31) >> 5
              while uint256(stor13[cd].field_0) > idx:
                  uint256(stor13[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          uint256(stor14[cd].field_0) = ('cd', 132).length
          if not ('cd', 132).length:
              idx = 0
              while uint256(stor14[cd].field_0) > idx:
                  uint256(stor14[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              s = 0
              idx = ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + 192
              while ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192 > idx:
                  uint256(stor14[cd][s].field_0) = mem[idx]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
              while uint256(stor14[cd].field_0) > idx:
                  uint256(stor14[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
      else:
          uint256(stor10[cd].field_0) = (2 * ('cd', 68).length) + 1
          if ('cd', 68).length <= 0:
              idx = 0
              while stor10[cd].field_1 % 128 + 31 / 32 > idx:
                  uint256(stor10[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              uint256(stor10[cd].field_0) = mem[128]
              s = 1
              idx = 160
              while ('cd', 68).length + 128 > idx:
                  uint256(stor10[cd][s].field_0) = mem[idx]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = (Mask(251, 0, ('cd', 68).length - 1) >> 5) + 1
              while stor10[cd].field_1 % 128 + 31 / 32 > idx:
                  uint256(stor10[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          uint256(stor13[cd].field_0) = Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]
          if not Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]:
              idx = 0
              while uint256(stor13[cd].field_0) > idx:
                  uint256(stor13[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              s = 0
              idx = ceil32(('cd', 68).length) + 160
              while ceil32(('cd', 68).length) + (32 * Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]) + 160 > idx:
                  addr(stor13[cd][s].field_0) = mem[idx + 12 len 20]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = Mask(251, 0, (32 * Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), mem[('cd', 68).length + 160 len -('cd', 68).length + ceil32(('cd', 68).length)]) + 31) >> 5
              while uint256(stor13[cd].field_0) > idx:
                  uint256(stor13[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          uint256(stor14[cd].field_0) = ('cd', 132).length
          if not ('cd', 132).length:
              idx = 0
              while uint256(stor14[cd].field_0) > idx:
                  uint256(stor14[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
          else:
              s = 0
              idx = ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + 192
              while ceil32(('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192 > idx:
                  uint256(stor14[cd][s].field_0) = mem[idx]
                  s = s + 1
                  idx = idx + 32
                  continue 
              idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
              while uint256(stor14[cd].field_0) > idx:
                  uint256(stor14[cd][idx].field_0) = 0
                  idx = idx + 1
                  continue 
  return 1

def unknown5a9c9eb8(): # not payable
  require calldata.size - 4 >=′ 96
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 4).length > 18446744073709551615:
      revert with 0, 65
  if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > 18446744073709551615:
      revert with 0, 65
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 36).length > 18446744073709551615:
      revert with 0, 65
  if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > 18446744073709551615:
      revert with 0, 65
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 68).length > 18446744073709551615:
      revert with 0, 65
  if (32 * ('cd', 68).length) + 192 < 160 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > 18446744073709551615:
      revert with 0, 65
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      require cds] + 67 <′ calldata.size
      if cd[(cds] + 36)] > 18446744073709551615:
          revert with 0, 65
      _285 = mem[64]
      if mem[64] + ceil32(cd[(cds] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cds] + 36)]) + 32 > 18446744073709551615:
          revert with 0, 65
      mem[64] = mem[64] + ceil32(cd[(cds] + 36)]) + 32
      mem[_285] = cd[(cds] + 36)]
      require cds] + cd[(cds] + 36)] + 68 <= calldata.size
      mem[_285 + 32 len cd[(cds] + 36)]] = call.data[cds] + 68 len cd[(cds] + 36)]]
      mem[_285 + cd[(cds] + 36)] + 32] = 0
      mem[t] = _285
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  mem[0] = caller
  mem[32] = sha3(0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, 11)
  if not uint8(unknown248a9ca3[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][caller].field_0):
      revert with 0, 'ERC721PresetMinterPauserAutoId: must have minter role to mint'
  idx = 0
  while idx < mem[96]:
      if idx >= mem[96]:
          revert with 0, 50
      if idx >= mem[(32 * ('cd', 4).length) + 128]:
          revert with 0, 50
      if not mem[(32 * idx) + 140 len 20]:
          revert with 0, 'ERC721: mint to the zero address'
      if ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
          revert with 0, 'ERC721: token already minted'
      stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      if mem[(32 * idx) + 140 len 20]:
          if not mem[(32 * idx) + 140 len 20]:
              if balanceOf[addr(mem[(32 * idx) + 128])] > -2:
                  revert with 0, 17
              balanceOf[addr(mem[(32 * idx) + 128])]++
              ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = mem[(32 * idx) + 140 len 20]
              log Transfer(
                    address from=0,
                    address to=mem[(32 * idx) + 140 len 20],
                    uint256 value=mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                  revert with 0, 50
              if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                  revert with 0, 50
              if not ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
                  revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
              mem[32] = 10
              _414 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
              if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0):
                  if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) < 32:
                      revert with 0, 34
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
                  if not _414:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                  else:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _414) + 1
                      if _414 <= 0:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                          t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                          while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _414 + 32 > t:
                              uint256(stor[s]) = mem[t]
                              s = s + 1
                              t = t + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _414 - 1) >> 5) + 1
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
              else:
                  if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 < 32:
                      revert with 0, 34
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
                  if not _414:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                  else:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _414) + 1
                      if _414 <= 0:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                          t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                          while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _414 + 32 > t:
                              uint256(stor[s]) = mem[t]
                              s = s + 1
                              t = t + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _414 - 1) >> 5) + 1
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
          else:
              if not mem[(32 * idx) + 140 len 20]:
                  revert with 0, 'ERC721: balance query for the zero address'
              tokenOfOwnerByIndex[addr(mem[(32 * idx) + 128])][stor3[addr(mem[(32 * idx) + 128])]] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
              stor7[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = balanceOf[addr(mem[(32 * idx) + 128])]
              if balanceOf[addr(mem[(32 * idx) + 128])] > -2:
                  revert with 0, 17
              balanceOf[addr(mem[(32 * idx) + 128])]++
              ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = mem[(32 * idx) + 140 len 20]
              log Transfer(
                    address from=0,
                    address to=mem[(32 * idx) + 140 len 20],
                    uint256 value=mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                  revert with 0, 50
              if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                  revert with 0, 50
              if not ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
                  revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
              mem[32] = 10
              _429 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
              if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0):
                  if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) < 32:
                      revert with 0, 34
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
                  if not _429:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                  else:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _429) + 1
                      if _429 <= 0:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                          t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                          while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _429 + 32 > t:
                              uint256(stor[s]) = mem[t]
                              s = s + 1
                              t = t + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _429 - 1) >> 5) + 1
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
              else:
                  if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 < 32:
                      revert with 0, 34
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
                  if not _429:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                  else:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _429) + 1
                      if _429 <= 0:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                          t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                          while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _429 + 32 > t:
                              uint256(stor[s]) = mem[t]
                              s = s + 1
                              t = t + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _429 - 1) >> 5) + 1
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
          if idx == -1:
              revert with 0, 17
          idx = idx + 1
          continue 
      if tokenByIndex.length < 1:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
      stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
      if balanceOf[addr(mem[(32 * idx) + 128])] > -2:
          revert with 0, 17
      balanceOf[addr(mem[(32 * idx) + 128])]++
      ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = mem[(32 * idx) + 140 len 20]
      log Transfer(
            address from=0,
            address to=mem[(32 * idx) + 140 len 20],
            uint256 value=mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
      if idx >= mem[(32 * ('cd', 4).length) + 128]:
          revert with 0, 50
      if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
          revert with 0, 50
      if not ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
          revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      mem[32] = 10
      _437 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
      if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0):
          if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) < 32:
              revert with 0, 34
          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
          if not _437:
              uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                  uint256(stor[s]) = 0
                  s = s + 1
                  continue 
          else:
              uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _437) + 1
              if _437 <= 0:
                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                      uint256(stor[s]) = 0
                      s = s + 1
                      continue 
              else:
                  uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                  t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                  while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _437 + 32 > t:
                      uint256(stor[s]) = mem[t]
                      s = s + 1
                      t = t + 32
                      continue 
                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _437 - 1) >> 5) + 1
                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                      uint256(stor[s]) = 0
                      s = s + 1
                      continue 
          if idx == -1:
              revert with 0, 17
          idx = idx + 1
          continue 
      if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 < 32:
          revert with 0, 34
      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
      if not _437:
          uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
              uint256(stor[s]) = 0
              s = s + 1
              continue 
          if idx == -1:
              revert with 0, 17
          idx = idx + 1
          continue 
      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _437) + 1
      if _437 <= 0:
          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
              uint256(stor[s]) = 0
              s = s + 1
              continue 
          if idx == -1:
              revert with 0, 17
          idx = idx + 1
          continue 
      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
      t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
      while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _437 + 32 > t:
          uint256(stor[s]) = mem[t]
          s = s + 1
          t = t + 32
          continue 
      s = sha3(sha3(mem[(32 * s) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _437 - 1) >> 5) + 1
      while sha3(sha3(mem[(32 * s) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * s) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
          uint256(stor[s]) = 0
          s = s + 1
          continue 
      if sha3(sha3(mem[(32 * s) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * s) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) == -1:
          revert with 0, 17
      s = sha3(sha3(mem[(32 * s) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * s) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) + 1
      continue 
  return 1

def safeTransfer(address _to, uint256 _value) payable: 
  require calldata.size - 4 >=′ 64
  require _to == _to
  if not uint256(stor13[_value].field_0):
      if call.value:
          call caller with:
             value call.value wei
               gas 2300 * is_zero(value) wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
  else:
      if not uint256(stor13[_value].field_0):
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CashbackToken should be of cashback type'
      idx = 0
      s = 0
      while idx < uint256(stor14[_value].field_0):
          if idx >= uint256(stor14[_value].field_0):
              revert with 0, 50
          if s > !uint256(stor14[_value][idx].field_0):
              revert with 0, 17
          if idx == -1:
              revert with 0, 17
          mem[0] = _value
          mem[32] = 14
          idx = idx + 1
          s = s + uint256(stor14[_value][idx].field_0)
          continue 
      if s * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) > call.value:
          call caller with:
             value call.value wei
               gas 2300 * is_zero(value) wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                      'Value should be greater than or equal to cashback value'
      idx = 0
      while idx < uint256(stor13[_value].field_0):
          if idx >= uint256(stor14[_value].field_0):
              revert with 0, 50
          if uint256(stor14[_value][idx].field_0) > 0:
              if idx >= uint256(stor13[_value].field_0):
                  revert with 0, 50
              if idx >= uint256(stor14[_value].field_0):
                  revert with 0, 50
              call addr(stor13[_value][idx].field_0) with:
                 value uint256(stor14[_value][idx].field_0) wei
                   gas 2300 * is_zero(value) wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
          if idx == -1:
              revert with 0, 17
          mem[0] = _value
          mem[32] = 13
          idx = idx + 1
          continue 
      if call.value > s * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0):
          if call.value < s * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0):
              revert with 0, 17
          call caller with:
             value call.value - (s * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0) * uint256(stor14[_value].field_0)) wei
               gas 2300 * is_zero(value) wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
  if not ownerOf[_value]:
      revert with 0, 'ERC721: owner query for nonexistent token'
  if ownerOf[_value] != caller:
      revert with 0, 'ERC721: transfer of token that is not own'
  if not _to:
      revert with 0, 'ERC721: transfer to the zero address'
  if not caller:
      stor9[_value] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _value
  else:
      if _to != caller:
          if not caller:
              revert with 0, 'ERC721: balance query for the zero address'
          if balanceOf[caller] < 1:
              revert with 0, 17
          if balanceOf[caller] - 1 != stor7[_value]:
              tokenOfOwnerByIndex[caller][stor7[_value]] = tokenOfOwnerByIndex[caller][stor3[caller] - 1]
              stor7[stor6[caller][stor3[caller] - 1]] = stor7[_value]
          stor7[_value] = 0
          tokenOfOwnerByIndex[caller][stor3[caller] - 1] = 0
  if _to:
      if _to != caller:
          if not _to:
              revert with 0, 'ERC721: balance query for the zero address'
          tokenOfOwnerByIndex[addr(_to)][stor3[addr(_to)]] = _value
          stor7[_value] = balanceOf[addr(_to)]
  else:
      if tokenByIndex.length < 1:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[_value] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[_value]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[_value]
      stor9[_value] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  approved[_value] = 0
  if not ownerOf[_value]:
      revert with 0, 'ERC721: owner query for nonexistent token'
  log Approval(
        address owner=ownerOf[_value],
        address spender=0,
        uint256 value=_value)
  if balanceOf[caller] < 1:
      revert with 0, 17
  balanceOf[caller]--
  if balanceOf[addr(_to)] > -2:
      revert with 0, 17
  balanceOf[addr(_to)]++
  ownerOf[_value] = _to
  log Transfer(
        address from=caller,
        address to=_to,
        uint256 value=_value)
  if ext_code.size(_to):
      require ext_code.size(_to)
      call _to.onERC721Received(address operator, address from, uint256 tokenId, bytes data) with:
           gas gas_remaining wei
          args 0, uint32(caller), caller, _value, 128, 0
      if not ext_call.success:
          if not return_data.size:
              revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
          if not return_data.size:
              revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=′ 32
      require ext_call.return_data == Mask(32, 224, ext_call.return_data[0])
      if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
          revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'

def unknown94f68d84(): # not payable
  require calldata.size - 4 >=′ 160
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 4).length > 18446744073709551615:
      revert with 0, 65
  if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > 18446744073709551615:
      revert with 0, 65
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 36).length > 18446744073709551615:
      revert with 0, 65
  if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > 18446744073709551615:
      revert with 0, 65
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 68).length > 18446744073709551615:
      revert with 0, 65
  if (32 * ('cd', 68).length) + 192 < 160 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > 18446744073709551615:
      revert with 0, 65
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      require cds] + 67 <′ calldata.size
      if cd[(cds] + 36)] > 18446744073709551615:
          revert with 0, 65
      _2455 = mem[64]
      if mem[64] + ceil32(cd[(cds] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cds] + 36)]) + 32 > 18446744073709551615:
          revert with 0, 65
      mem[64] = mem[64] + ceil32(cd[(cds] + 36)]) + 32
      mem[_2455] = cd[(cds] + 36)]
      require cds] + cd[(cds] + 36)] + 68 <= calldata.size
      mem[_2455 + 32 len cd[(cds] + 36)]] = call.data[cds] + 68 len cd[(cds] + 36)]]
      mem[_2455 + cd[(cds] + 36)] + 32] = 0
      mem[t] = _2455
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 100).length > 18446744073709551615:
      revert with 0, 65
  _2456 = mem[64]
  if mem[64] + (32 * ('cd', 100).length) + 32 < mem[64] or mem[64] + (32 * ('cd', 100).length) + 32 > 18446744073709551615:
      revert with 0, 65
  mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
  mem[_2456] = ('cd', 100).length
  idx = 0
  s = cd[100] + 36
  t = _2456 + 32
  while idx < ('cd', 100).length:
      require cds] + 67 <′ calldata.size
      if cd[(cds] + 36)] > 18446744073709551615:
          revert with 0, 65
      _3271 = mem[64]
      if mem[64] + (32 * cd[(cds] + 36)]) + 32 < mem[64] or mem[64] + (32 * cd[(cds] + 36)]) + 32 > 18446744073709551615:
          revert with 0, 65
      mem[64] = mem[64] + (32 * cd[(cds] + 36)]) + 32
      mem[_3271] = cd[(cds] + 36)]
      require calldata.size >= cds] + (32 * cd[(cds] + 36)]) + 68
      u = 0
      v = cds] + 68
      w = _3271 + 32
      while u < cd[(cds] + 36)]:
          require cd[v] == addr(cd[v])
          mem[w] = cd[v]
          u = u + 1
          v = v + 32
          w = w + 32
          continue 
      mem[t] = _3271
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <′ calldata.size
  if ('cd', 132).length > 18446744073709551615:
      revert with 0, 65
  _3272 = mem[64]
  if mem[64] + (32 * ('cd', 132).length) + 32 < mem[64] or mem[64] + (32 * ('cd', 132).length) + 32 > 18446744073709551615:
      revert with 0, 65
  mem[64] = mem[64] + (32 * ('cd', 132).length) + 32
  mem[_3272] = ('cd', 132).length
  idx = 0
  s = cd[132] + 36
  t = _3272 + 32
  while idx < ('cd', 132).length:
      require cds] + 67 <′ calldata.size
      if cd[(cds] + 36)] > 18446744073709551615:
          revert with 0, 65
      _4089 = mem[64]
      if mem[64] + (32 * cd[(cds] + 36)]) + 32 < mem[64] or mem[64] + (32 * cd[(cds] + 36)]) + 32 > 18446744073709551615:
          revert with 0, 65
      mem[64] = mem[64] + (32 * cd[(cds] + 36)]) + 32
      mem[_4089] = cd[(cds] + 36)]
      require calldata.size >= cds] + (32 * cd[(cds] + 36)]) + 68
      u = 0
      v = cdv] + 68
      w = _4089 + 32
      while u < cd[(cdv] + 36)]:
          mem[w] = cd[v]
          u = u + 1
          v = v + 32
          w = w + 32
          continue 
      mem[w] = _4089
      u = u + 1
      v = v + 32
      w = w + 32
      continue 
  mem[0] = caller
  mem[32] = sha3(0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, 11)
  if not uint8(unknown248a9ca3[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][caller].field_0):
      revert with 0, 'ERC721PresetMinterPauserAutoId: must have minter role to mint'
  idx = 0
  while idx < mem[96]:
      if idx >= mem[96]:
          revert with 0, 50
      if idx >= mem[(32 * ('cd', 4).length) + 128]:
          revert with 0, 50
      if not mem[(32 * idx) + 140 len 20]:
          revert with 0, 'ERC721: mint to the zero address'
      if ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
          revert with 0, 'ERC721: token already minted'
      stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      if mem[(32 * idx) + 140 len 20]:
          if not mem[(32 * idx) + 140 len 20]:
              if balanceOf[addr(mem[(32 * idx) + 128])] > -2:
                  revert with 0, 17
              balanceOf[addr(mem[(32 * idx) + 128])]++
              ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = mem[(32 * idx) + 140 len 20]
              log Transfer(
                    address from=0,
                    address to=mem[(32 * idx) + 140 len 20],
                    uint256 value=mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                  revert with 0, 50
              if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                  revert with 0, 50
              if not ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
                  revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
              mem[32] = 10
              _4936 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
              if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0):
                  if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) < 32:
                      revert with 0, 34
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
                  if not _4936:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_2456]:
                          revert with 0, 50
                      _5738 = mem[(32 * idx) + _2456 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 13
                      _5791 = mem[_5738]
                      uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5738]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                      if not _5791:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _6483 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _6543 = mem[_6483]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6483]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _6543:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _6483 + 32
                              while _6483 + (32 * _6543) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6543) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          s = _5738 + 32
                          while _5738 + (32 * _5791) + 32 > s:
                              addr(stor[t]) = mem[s + 12 len 20]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5791) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _7048 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _7114 = mem[_7048]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7048]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _7114:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _7048 + 32
                              while _7048 + (32 * _7114) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7114) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                  else:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _4936) + 1
                      if _4936 <= 0:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_2456]:
                              revert with 0, 50
                          _5734 = mem[(32 * idx) + _2456 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 13
                          _5785 = mem[_5734]
                          uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5734]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                          if not _5785:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _6478 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _6535 = mem[_6478]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6478]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _6535:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _6478 + 32
                                  while _6478 + (32 * _6535) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6535) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              s = _5734 + 32
                              while _5734 + (32 * _5785) + 32 > s:
                                  addr(stor[t]) = mem[s + 12 len 20]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5785) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7042 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7105 = mem[_7042]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7042]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7105:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7042 + 32
                                  while _7042 + (32 * _7105) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7105) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                      else:
                          uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                          t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                          while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _4936 + 32 > t:
                              uint256(stor[s]) = mem[t]
                              s = s + 1
                              t = t + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _4936 - 1) >> 5) + 1
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_2456]:
                              revert with 0, 50
                          _6536 = mem[(32 * idx) + _2456 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 13
                          _6620 = mem[_6536]
                          uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6536]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                          if not _6620:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7044 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7108 = mem[_7044]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7044]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7108:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7044 + 32
                                  while _7044 + (32 * _7108) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7108) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              s = _6536 + 32
                              while _6536 + (32 * _6620) + 32 > s:
                                  addr(stor[t]) = mem[s + 12 len 20]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _6620) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7334 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7348 = mem[_7334]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7334]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7348:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7334 + 32
                                  while _7334 + (32 * _7348) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7348) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
              else:
                  if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 < 32:
                      revert with 0, 34
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
                  if not _4936:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_2456]:
                          revert with 0, 50
                      _5746 = mem[(32 * idx) + _2456 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 13
                      _5803 = mem[_5746]
                      uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5746]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                      if not _5803:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _6492 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _6557 = mem[_6492]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6492]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _6557:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _6492 + 32
                              while _6492 + (32 * _6557) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6557) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          s = _5746 + 32
                          while _5746 + (32 * _5803) + 32 > s:
                              addr(stor[t]) = mem[s + 12 len 20]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5803) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _7058 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _7129 = mem[_7058]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7058]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _7129:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _7058 + 32
                              while _7058 + (32 * _7129) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7129) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                  else:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _4936) + 1
                      if _4936 <= 0:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_2456]:
                              revert with 0, 50
                          _5742 = mem[(32 * idx) + _2456 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 13
                          _5797 = mem[_5742]
                          uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5742]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                          if not _5797:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _6487 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _6549 = mem[_6487]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6487]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _6549:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _6487 + 32
                                  while _6487 + (32 * _6549) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6549) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              s = _5742 + 32
                              while _5742 + (32 * _5797) + 32 > s:
                                  addr(stor[t]) = mem[s + 12 len 20]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5797) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7052 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7120 = mem[_7052]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7052]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7120:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7052 + 32
                                  while _7052 + (32 * _7120) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7120) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                      else:
                          uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                          t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                          while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _4936 + 32 > t:
                              uint256(stor[s]) = mem[t]
                              s = s + 1
                              t = t + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _4936 - 1) >> 5) + 1
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_2456]:
                              revert with 0, 50
                          _6550 = mem[(32 * idx) + _2456 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 13
                          _6631 = mem[_6550]
                          uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6550]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                          if not _6631:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7054 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7123 = mem[_7054]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7054]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7123:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7054 + 32
                                  while _7054 + (32 * _7123) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7123) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              s = _6550 + 32
                              while _6550 + (32 * _6631) + 32 > s:
                                  addr(stor[t]) = mem[s + 12 len 20]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _6631) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7336 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7351 = mem[_7336]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7336]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7351:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7336 + 32
                                  while _7336 + (32 * _7351) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7351) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
          else:
              if not mem[(32 * idx) + 140 len 20]:
                  revert with 0, 'ERC721: balance query for the zero address'
              tokenOfOwnerByIndex[addr(mem[(32 * idx) + 128])][stor3[addr(mem[(32 * idx) + 128])]] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
              stor7[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = balanceOf[addr(mem[(32 * idx) + 128])]
              if balanceOf[addr(mem[(32 * idx) + 128])] > -2:
                  revert with 0, 17
              balanceOf[addr(mem[(32 * idx) + 128])]++
              ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = mem[(32 * idx) + 140 len 20]
              log Transfer(
                    address from=0,
                    address to=mem[(32 * idx) + 140 len 20],
                    uint256 value=mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                  revert with 0, 50
              if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                  revert with 0, 50
              if not ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
                  revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
              mem[32] = 10
              _4951 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
              if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0):
                  if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) < 32:
                      revert with 0, 34
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
                  if not _4951:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_2456]:
                          revert with 0, 50
                      _5754 = mem[(32 * idx) + _2456 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 13
                      _5815 = mem[_5754]
                      uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5754]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                      if not _5815:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _6501 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _6571 = mem[_6501]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6501]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _6571:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _6501 + 32
                              while _6501 + (32 * _6571) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6571) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          s = _5754 + 32
                          while _5754 + (32 * _5815) + 32 > s:
                              addr(stor[t]) = mem[s + 12 len 20]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5815) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _7068 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _7144 = mem[_7068]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7068]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _7144:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _7068 + 32
                              while _7068 + (32 * _7144) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7144) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                  else:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _4951) + 1
                      if _4951 <= 0:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_2456]:
                              revert with 0, 50
                          _5750 = mem[(32 * idx) + _2456 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 13
                          _5809 = mem[_5750]
                          uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5750]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                          if not _5809:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _6496 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _6563 = mem[_6496]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6496]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _6563:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _6496 + 32
                                  while _6496 + (32 * _6563) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6563) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              s = _5750 + 32
                              while _5750 + (32 * _5809) + 32 > s:
                                  addr(stor[t]) = mem[s + 12 len 20]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5809) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7062 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7135 = mem[_7062]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7062]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7135:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7062 + 32
                                  while _7062 + (32 * _7135) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7135) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                      else:
                          uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                          t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                          while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _4951 + 32 > t:
                              uint256(stor[s]) = mem[t]
                              s = s + 1
                              t = t + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _4951 - 1) >> 5) + 1
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_2456]:
                              revert with 0, 50
                          _6564 = mem[(32 * idx) + _2456 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 13
                          _6642 = mem[_6564]
                          uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6564]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                          if not _6642:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7064 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7138 = mem[_7064]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7064]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7138:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7064 + 32
                                  while _7064 + (32 * _7138) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7138) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              s = _6564 + 32
                              while _6564 + (32 * _6642) + 32 > s:
                                  addr(stor[t]) = mem[s + 12 len 20]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _6642) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7338 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7354 = mem[_7338]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7338]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7354:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7338 + 32
                                  while _7338 + (32 * _7354) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7354) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
              else:
                  if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 < 32:
                      revert with 0, 34
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
                  if not _4951:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_2456]:
                          revert with 0, 50
                      _5762 = mem[(32 * idx) + _2456 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 13
                      _5827 = mem[_5762]
                      uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5762]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                      if not _5827:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _6510 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _6585 = mem[_6510]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6510]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _6585:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _6510 + 32
                              while _6510 + (32 * _6585) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6585) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          s = _5762 + 32
                          while _5762 + (32 * _5827) + 32 > s:
                              addr(stor[t]) = mem[s + 12 len 20]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5827) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _7078 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _7159 = mem[_7078]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7078]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _7159:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _7078 + 32
                              while _7078 + (32 * _7159) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7159) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                  else:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _4951) + 1
                      if _4951 <= 0:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_2456]:
                              revert with 0, 50
                          _5758 = mem[(32 * idx) + _2456 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 13
                          _5821 = mem[_5758]
                          uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5758]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                          if not _5821:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _6505 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _6577 = mem[_6505]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6505]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _6577:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _6505 + 32
                                  while _6505 + (32 * _6577) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6577) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              s = _5758 + 32
                              while _5758 + (32 * _5821) + 32 > s:
                                  addr(stor[t]) = mem[s + 12 len 20]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5821) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7072 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7150 = mem[_7072]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7072]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7150:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7072 + 32
                                  while _7072 + (32 * _7150) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7150) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                      else:
                          uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                          t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                          while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _4951 + 32 > t:
                              uint256(stor[s]) = mem[t]
                              s = s + 1
                              t = t + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _4951 - 1) >> 5) + 1
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_2456]:
                              revert with 0, 50
                          _6578 = mem[(32 * idx) + _2456 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 13
                          _6653 = mem[_6578]
                          uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6578]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                          if not _6653:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7074 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7153 = mem[_7074]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7074]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7153:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7074 + 32
                                  while _7074 + (32 * _7153) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7153) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                              s = _6578 + 32
                              while _6578 + (32 * _6653) + 32 > s:
                                  addr(stor[t]) = mem[s + 12 len 20]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _6653) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                              if idx >= mem[_3272]:
                                  revert with 0, 50
                              _7340 = mem[(32 * idx) + _3272 + 32]
                              if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                  revert with 0, 50
                              mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                              mem[32] = 14
                              _7357 = mem[_7340]
                              uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7340]
                              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                              if not _7357:
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
                              else:
                                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                                  s = _7340 + 32
                                  while _7340 + (32 * _7357) + 32 > s:
                                      uint256(stor[t]) = mem[s]
                                      t = t + 1
                                      s = s + 32
                                      continue 
                                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7357) + 31) >> 5)
                                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                      uint256(stor[s]) = 0
                                      s = s + 1
                                      continue 
      else:
          if tokenByIndex.length < 1:
              revert with 0, 17
          if tokenByIndex.length - 1 >= tokenByIndex.length:
              revert with 0, 50
          if stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= tokenByIndex.length:
              revert with 0, 50
          tokenByIndex[stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]] = tokenByIndex[tokenByIndex.length]
          stor9[stor8[stor8.length]] = stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
          stor9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = 0
          if not tokenByIndex.length:
              revert with 0, 49
          tokenByIndex[tokenByIndex.length] = 0
          tokenByIndex.length--
          if balanceOf[addr(mem[(32 * idx) + 128])] > -2:
              revert with 0, 17
          balanceOf[addr(mem[(32 * idx) + 128])]++
          ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = mem[(32 * idx) + 140 len 20]
          log Transfer(
                address from=0,
                address to=mem[(32 * idx) + 140 len 20],
                uint256 value=mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
          if idx >= mem[(32 * ('cd', 4).length) + 128]:
              revert with 0, 50
          if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
              revert with 0, 50
          if not ownerOf[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
              revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
          mem[32] = 10
          _4959 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
          if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0):
              if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) < 32:
                  revert with 0, 34
              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
              if not _4959:
                  uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                      uint256(stor[s]) = 0
                      s = s + 1
                      continue 
                  if idx >= mem[_2456]:
                      revert with 0, 50
                  _5770 = mem[(32 * idx) + _2456 + 32]
                  if idx >= mem[(32 * ('cd', 4).length) + 128]:
                      revert with 0, 50
                  mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                  mem[32] = 13
                  _5839 = mem[_5770]
                  uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5770]
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                  if not _5839:
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_3272]:
                          revert with 0, 50
                      _6519 = mem[(32 * idx) + _3272 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 14
                      _6599 = mem[_6519]
                      uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6519]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                      if not _6599:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          s = _6519 + 32
                          while _6519 + (32 * _6599) + 32 > s:
                              uint256(stor[t]) = mem[s]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6599) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                  else:
                      t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                      s = _5770 + 32
                      while _5770 + (32 * _5839) + 32 > s:
                          addr(stor[t]) = mem[s + 12 len 20]
                          t = t + 1
                          s = s + 32
                          continue 
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5839) + 31) >> 5)
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_3272]:
                          revert with 0, 50
                      _7088 = mem[(32 * idx) + _3272 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 14
                      _7174 = mem[_7088]
                      uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7088]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                      if not _7174:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          s = _7088 + 32
                          while _7088 + (32 * _7174) + 32 > s:
                              uint256(stor[t]) = mem[s]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7174) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
              else:
                  uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _4959) + 1
                  if _4959 <= 0:
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_2456]:
                          revert with 0, 50
                      _5766 = mem[(32 * idx) + _2456 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 13
                      _5833 = mem[_5766]
                      uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5766]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                      if not _5833:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _6514 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _6591 = mem[_6514]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6514]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _6591:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _6514 + 32
                              while _6514 + (32 * _6591) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6591) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          s = _5766 + 32
                          while _5766 + (32 * _5833) + 32 > s:
                              addr(stor[t]) = mem[s + 12 len 20]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5833) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _7082 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _7165 = mem[_7082]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7082]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _7165:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _7082 + 32
                              while _7082 + (32 * _7165) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7165) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                  else:
                      uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                      t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                      while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _4959 + 32 > t:
                          uint256(stor[s]) = mem[t]
                          s = s + 1
                          t = t + 32
                          continue 
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _4959 - 1) >> 5) + 1
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (uint255(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1) + 31 / 32) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_2456]:
                          revert with 0, 50
                      _6592 = mem[(32 * idx) + _2456 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 13
                      _6664 = mem[_6592]
                      uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6592]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                      if not _6664:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _7084 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _7168 = mem[_7084]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7084]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _7168:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _7084 + 32
                              while _7084 + (32 * _7168) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7168) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                          s = _6592 + 32
                          while _6592 + (32 * _6664) + 32 > s:
                              addr(stor[t]) = mem[s + 12 len 20]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _6664) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                          if idx >= mem[_3272]:
                              revert with 0, 50
                          _7342 = mem[(32 * idx) + _3272 + 32]
                          if idx >= mem[(32 * ('cd', 4).length) + 128]:
                              revert with 0, 50
                          mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                          mem[32] = 14
                          _7360 = mem[_7342]
                          uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7342]
                          mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                          if not _7360:
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
                          else:
                              t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                              s = _7342 + 32
                              while _7342 + (32 * _7360) + 32 > s:
                                  uint256(stor[t]) = mem[s]
                                  t = t + 1
                                  s = s + 32
                                  continue 
                              s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7360) + 31) >> 5)
                              while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                                  uint256(stor[s]) = 0
                                  s = s + 1
                                  continue 
          else:
              if bool(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) == stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 < 32:
                  revert with 0, 34
              mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)
              if not _4959:
                  uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = 0
                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                      uint256(stor[s]) = 0
                      s = s + 1
                      continue 
                  if idx >= mem[_2456]:
                      revert with 0, 50
                  _5778 = mem[(32 * idx) + _2456 + 32]
                  if idx >= mem[(32 * ('cd', 4).length) + 128]:
                      revert with 0, 50
                  mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                  mem[32] = 13
                  _5851 = mem[_5778]
                  uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5778]
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                  if not _5851:
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_3272]:
                          revert with 0, 50
                      _6528 = mem[(32 * idx) + _3272 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 14
                      _6613 = mem[_6528]
                      uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6528]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                      if not _6613:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          s = _6528 + 32
                          while _6528 + (32 * _6613) + 32 > s:
                              uint256(stor[t]) = mem[s]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6613) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      if idx == -1:
                          revert with 0, 17
                      idx = idx + 1
                      continue 
                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                  s = _5778 + 32
                  while _5778 + (32 * _5851) + 32 > s:
                      addr(stor[t]) = mem[s + 12 len 20]
                      t = t + 1
                      s = s + 32
                      continue 
                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5851) + 31) >> 5)
                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                      uint256(stor[s]) = 0
                      s = s + 1
                      continue 
                  if idx >= mem[_3272]:
                      revert with 0, 50
                  _7098 = mem[(32 * idx) + _3272 + 32]
                  if idx >= mem[(32 * ('cd', 4).length) + 128]:
                      revert with 0, 50
                  mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                  mem[32] = 14
                  _7189 = mem[_7098]
                  uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7098]
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                  if not _7189:
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx == -1:
                          revert with 0, 17
                      idx = idx + 1
                      continue 
                  t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                  s = _7098 + 32
                  while _7098 + (32 * _7189) + 32 > s:
                      uint256(stor[t]) = mem[s]
                      t = t + 1
                      s = s + 32
                      continue 
                  s = sha3(sha3(mem[(32 * s) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7189) + 31) >> 5)
                  while sha3(sha3(mem[(32 * s) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * s) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                      uint256(stor[s]) = 0
                      s = s + 1
                      continue 
                  if sha3(sha3(mem[(32 * s) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * s) + (32 * ('cd', 4).length) + 160]].field_0) == -1:
                      revert with 0, 17
                  s = sha3(sha3(mem[(32 * s) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * s) + (32 * ('cd', 4).length) + 160]].field_0) + 1
                  continue 
              uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = (2 * _4959) + 1
              if _4959 <= 0:
                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10))
                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                      uint256(stor[s]) = 0
                      s = s + 1
                      continue 
                  if idx >= mem[_2456]:
                      revert with 0, 50
                  _5774 = mem[(32 * idx) + _2456 + 32]
                  if idx >= mem[(32 * ('cd', 4).length) + 128]:
                      revert with 0, 50
                  mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                  mem[32] = 13
                  _5845 = mem[_5774]
                  uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_5774]
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                  if not _5845:
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_3272]:
                          revert with 0, 50
                      _6523 = mem[(32 * idx) + _3272 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 14
                      _6605 = mem[_6523]
                      uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6523]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                      if not _6605:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          s = _6523 + 32
                          while _6523 + (32 * _6605) + 32 > s:
                              uint256(stor[t]) = mem[s]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _6605) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                  else:
                      t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                      s = _5774 + 32
                      while _5774 + (32 * _5845) + 32 > s:
                          addr(stor[t]) = mem[s + 12 len 20]
                          t = t + 1
                          s = s + 32
                          continue 
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _5845) + 31) >> 5)
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_3272]:
                          revert with 0, 50
                      _7092 = mem[(32 * idx) + _3272 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 14
                      _7180 = mem[_7092]
                      uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7092]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                      if not _7180:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          s = _7092 + 32
                          while _7092 + (32 * _7180) + 32 > s:
                              uint256(stor[t]) = mem[s]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7180) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
              else:
                  uint256(stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + 1
                  t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64
                  while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _4959 + 32 > t:
                      uint256(stor[s]) = mem[t]
                      s = s + 1
                      t = t + 32
                      continue 
                  s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (Mask(251, 0, _4959 - 1) >> 5) + 1
                  while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 10)) + (stor10[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_1 % 128 + 31 / 32) > s:
                      uint256(stor[s]) = 0
                      s = s + 1
                      continue 
                  if idx >= mem[_2456]:
                      revert with 0, 50
                  _6606 = mem[(32 * idx) + _2456 + 32]
                  if idx >= mem[(32 * ('cd', 4).length) + 128]:
                      revert with 0, 50
                  mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                  mem[32] = 13
                  _6675 = mem[_6606]
                  uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_6606]
                  mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)
                  if not _6675:
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_3272]:
                          revert with 0, 50
                      _7094 = mem[(32 * idx) + _3272 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 14
                      _7183 = mem[_7094]
                      uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7094]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                      if not _7183:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          s = _7094 + 32
                          while _7094 + (32 * _7183) + 32 > s:
                              uint256(stor[t]) = mem[s]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7183) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                  else:
                      t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13))
                      s = _6606 + 32
                      while _6606 + (32 * _6675) + 32 > s:
                          addr(stor[t]) = mem[s + 12 len 20]
                          t = t + 1
                          s = s + 32
                          continue 
                      s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + (Mask(251, 0, (32 * _6675) + 31) >> 5)
                      while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 13)) + uint256(stor13[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                          uint256(stor[s]) = 0
                          s = s + 1
                          continue 
                      if idx >= mem[_3272]:
                          revert with 0, 50
                      _7344 = mem[(32 * idx) + _3272 + 32]
                      if idx >= mem[(32 * ('cd', 4).length) + 128]:
                          revert with 0, 50
                      mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                      mem[32] = 14
                      _7363 = mem[_7344]
                      uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) = mem[_7344]
                      mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)
                      if not _7363:
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
                      else:
                          t = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14))
                          s = _7344 + 32
                          while _7344 + (32 * _7363) + 32 > s:
                              uint256(stor[t]) = mem[s]
                              t = t + 1
                              s = s + 32
                              continue 
                          s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + (Mask(251, 0, (32 * _7363) + 31) >> 5)
                          while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], 14)) + uint256(stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0) > s:
                              uint256(stor[s]) = 0
                              s = s + 1
                              continue 
      if idx == -1:
          revert with 0, 17
      idx = idx + 1
      continue 
  return 1
