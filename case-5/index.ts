function add(a: number, b: number) {
  return a + b;
}

// 使われていない変数
const unused = 123;

// any 型の使用（非推奨）
function logAny(value: any) {
  console.log(value);
}

add(1, 2);
logAny("test");
