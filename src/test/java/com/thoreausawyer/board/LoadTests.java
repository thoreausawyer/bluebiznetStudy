package com.thoreausawyer.board;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:root-context.xml"})
public class LoadTests {

    @Autowired
    private ApplicationContext ctx;

    @Test
    public void testLoad() {
    	System.out.println("test...");
    	System.err.println(ctx);
    }
}
