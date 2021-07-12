pragma solidity ^0.5.16;

contract TodoList{

    uint public taskCount = 0;

    struct Task{
        
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    event taskCreated(

        uint id,
        string content,
        bool completed
    );

    event taskCompleted(

        uint id, 
        bool completed
    );

    constructor() public{

        createTask("Clear out the karapanpoochi under the mug.");
    }

    function createTask(string memory _content) public {

        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit taskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint _id) public {

        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit taskCompleted(_id, _task.completed);
    }
}

