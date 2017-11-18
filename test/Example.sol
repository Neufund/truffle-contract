contract Example {
  uint public value;
  bool public fallbackTriggered;
  event ExampleEvent(address indexed _from, uint num);

  function Example(uint val) {
    if (val == 0x0) {
      value = 1;
    } else {
      value = val;
    }

    fallbackTriggered = false;
  }

  function setValue(uint val) {
    value = val;
  }

  function getValue() constant returns(uint) {
    return value;
  }

  function parrot(uint val) returns(uint) {
    return val;
  }

  function triggerEvent() {
    ExampleEvent(msg.sender, 8);
  }
  
  function setValueOverload(uint val) {
    value = val;
  }
  
  function setValueOverload(uint part1, uint part2) {
    value = part1 + part2;
  }
  
  function setValueOverload(uint part1, uint part2, uint part3) {
    value = part1 + part2 + part3;
  }

  function() payable {
    fallbackTriggered = true;
  }
}
