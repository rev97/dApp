// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title validator ratings
 * @dev Implements assignment of ratings to validators(ML peers, Site Plan Reviewers)
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract ValidatorRatings {

    uint256 ValidationAccuracy;
    uint256 
    struct MlPeer {
        string name;
        uint256 m_rating;
    
    }
    struct SiteReviewer {
        string name;
        uint256 s_rating;
    
    }

    MlPeer[] public mlpeers; //array for list of mlpeers
    SiteReviewer[] public sitereviewers;
    mapping(string => uint256) public nameTomrating; //used to map name to ml peer rating, so you can get ml peer rating using name
     
    function retrieve_ml() public view returns (MlPeer[] memory){
        return mlpeers; //retrieve tuple of all mlpeers
    }
    
    function retrieve_sr() public view returns (SiteReviewer[] memory){
        return mlpeers; //retrieve tuple of all sitereviewers
    }

    function addmlpeer(string memory _name, string memory _m_rating) public {
        mlpeers.push(MlPeer(_name, _m_rating)); //append to  MlPeer[] array
        nameTomrating[_name] = _m_ratingr; //use name to get phone number
    }
    function addmlpeer(string memory _name, string memory _m_rating) public {
        mlpeers.push(MlPeer(_name, _m_rating)); //append to  MlPeer[] array
        nameTomrating[_name] = _m_ratingr; //use name to get phone number
    }
    
}