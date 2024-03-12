// calculator
// variables (let -> immutable, var -› mutable)
// operators
// async method
// if condition
// canister => Smart contract

actor calculator {
    var cell: Int = 0;

    // addition
    // function
    public func addition(s: Int) : async Int {
        cell += s; 
        return cell;
    };

    // subtraction
    public func subtraction(s: Int) : async Int {
        cell -= s; 
        return cell;
    };

    // multiplication
    public func multiplication(s: Int) : async Int {
        cell *= s; 
        return cell;
    };

    // division
    public func division(s: Int) : async ?Int {
        if (s == 0) {
            return null;
        } else {
            cell /= s;
            return cell;
        }
    };

    // reset
    public func reset() : async () {
        cell := 0;
    };
};
