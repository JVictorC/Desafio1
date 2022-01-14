const numberDivisibleBy3or5 = (numberByAnalise) => {
  const numbersValid = [];
  for (let index = 1; index < numberByAnalise; index+=1 ) {
    const validations = [
      index % 3 === 0,
      index % 5 === 0,
    ];

    if(validations.includes(true)) numbersValid.push(index);
  }

  return numbersValid.reduce((acc, value) => acc += value,0);
}

console.log(numberDivisibleBy3or5(11));