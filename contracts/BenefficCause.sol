// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract BenefficCause {
    struct typeCause {
        uint id;
        string name;
        uint object_price;
        uint recover_quantity;
    }
    uint casue_visit = 0;

    mapping (string => typeCause) causes;

    function newCause (string memory _name, uint objective_price) public payable{
        casue_visit = casue_visit + 1;
        causes[_name] = typeCause(casue_visit, _name,objective_price,0);
    } 

    function targetQuantity (string memory _name, uint _donation) private view returns(bool) {
        bool isComplete = false;
        typeCause memory cause = causes[_name];

        if(cause.object_price >= (cause.recover_quantity + _donation)) {
            return isComplete = true;
        }
        return isComplete;

    }

    function donate (string memory _name, uint _quantity_money) public view returns (bool) {
        bool acceptDonation = false;
        bool isTargetComplete = targetQuantity(_name, _quantity_money);
        if(!isTargetComplete){
           return acceptDonation = true;
        }

        return acceptDonation;
    }

    function completeCauseObjetive(string memory _name) public view returns(bool, uint){
        typeCause memory cause = causes[_name];
        if(cause.recover_quantity >= cause.object_price) {
            return  (true, cause.object_price);
        }

        return (false, cause.recover_quantity); 
    }
}