package edu.mum.aspect;

import edu.mum.domain.Member;
import edu.mum.domain.Poll;
import edu.mum.service.EmailServer;
import edu.mum.service.MemberService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Aspect
@Component
public class MailAspect {

    @Autowired
    EmailServer emailServer;

    @Autowired
    MemberService memberService;

    @Pointcut("@annotation(edu.mum.aspect.annotation.MailNotification)")
    public void mailNotification() {
    }

    @Pointcut("execution(* edu.mum.service..*(..))")
    public void applicationMethod() {
    }

    @AfterReturning("mailNotification() && args(poll) && applicationMethod() ")
    public void mailResource(JoinPoint joinPoint, Poll poll) {
        System.out.println();
        System.out.println("--------------------------------- TARGET CLASS : " +
                joinPoint.getSignature().getDeclaringTypeName() + "." +
                joinPoint.getSignature().getName() + " -");

        System.out.println(poll.getName());

        List<String> to = new ArrayList<>();
        List<Member> members = memberService.findAll();
        for(Member member: members) {
            if(member.getEmail() != null && !member.getEmail().isEmpty()) {
                to.add(member.getEmail());
            }
        }
        emailServer.sendPollMail(to.toArray(new String[to.size()]), poll);
    }
}
