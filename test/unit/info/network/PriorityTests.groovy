package info.network

import grails.test.*

class PriorityTests extends GrailsUnitTestCase {
    def priorityA
	def priorityB
	
	protected void setUp() {
        super.setUp()
		
		priorityA = new Priority(name:"priorityA", description:"priorityA Desc", level:0)
		priorityB = new Priority(name:"priorityB", description:"priorityB Desc", level:2)
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCompareTo() {
		assertEquals(1, priorityB.compareTo(priorityA))
		assertEquals(0, priorityB.compareTo(priorityB))
		assertEquals(-1, priorityA.compareTo(priorityB))
    }
	
	void testCompareFailure(){
		shouldFail{
			assertEquals(1, priorityB.compareTo(new Object()))
		}
	}
}
