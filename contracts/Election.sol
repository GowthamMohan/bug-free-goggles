pragma solidity ^0.5.0;

contract Election {
  // model a candidate
  struct Candidate {
  	uint id;
  	string name;
  	uint voteCount;
  }

  // storing the  accounts that have voted
  mapping(address => bool) public voters;


  // fetch the candidates
  mapping(uint => Candidate) public candidates;
  
  // storing the  candidates count
  uint public candidatesCount;

  // voted event
  event votedEvent (
  	uint indexed _candidateId );

    // Constructor
    constructor() public {
    	addCandidate("Jonsnow");
    	addCandidate("Bran");
    
    }

    function addCandidate (string memory _name) private {
    	candidatesCount ++;
    	candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);

    }
    //voting function
    function vote(uint _candidateId) public {
    	// require that person has not voted before
    	require(!voters[msg.sender]);

    	// require a valid candidate
    	require(_candidateId > 0 && _candidateId <= candidatesCount);

    	//record that voter has voted
    	voters[msg.sender] = true;

    	//update candidate vote count
    	candidates[_candidateId].voteCount ++;

    	//trigger voted event
    	emit votedEvent(_candidateId);
    }
}