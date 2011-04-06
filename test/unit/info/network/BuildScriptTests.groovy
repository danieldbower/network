package info.network

import grails.test.*

class BuildScriptTests extends GrailsUnitTestCase {
	def scriptA
	def scriptB
	
	protected void setUp() {
        super.setUp()
		
		scriptA = new BuildScript(version:0, text:"A test build script, do stuff")
		scriptB = new BuildScript(version:2, text:"A test build script, do stuff")
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCompareTo() {
		assertEquals(1, scriptB.compareTo(scriptA))
		assertEquals(0, scriptB.compareTo(scriptB))
		assertEquals(-1, scriptA.compareTo(scriptB))
    }
	
	void testCompareFailure(){
		shouldFail{
			assertEquals(1, scriptB.compareTo(new Object()))
		}
	}
}
