---
title: "About Our Company"
layout: "company"
description: "Learn about our mission, leadership team, and the investors backing our vision"
---

{{< section-container class="bg-gradient-to-b from-blue-50 via-blue-50 to-white pt-20 pb-32" >}}
    <div class="text-center">
        <h1 class="text-4xl md:text-5xl font-bold mb-6">Building the Future of SaaS</h1>
        <p class="text-xl text-gray-600 mb-16">We're on a mission to revolutionize how businesses operate in the digital age</p>
        <div class="max-w-3xl mx-auto bg-white rounded-xl shadow-sm p-8">
            <h2 class="text-3xl font-bold mb-4">Our Mission</h2>
            <p class="text-xl text-gray-600">
                We're dedicated to empowering businesses with innovative SaaS solutions that drive growth and efficiency. Our platform combines cutting-edge technology with intuitive design to solve complex business challenges.
            </p>
        </div>
    </div>
{{< /section-container >}}

{{< section-container class="py-20 bg-gray-50" >}}
    <div class="max-w-6xl mx-auto">
        <h2 class="text-3xl font-bold text-center mb-12">Leadership Team</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            {{< team-member 
                name="Sarah Johnson"
                title="Chief Executive Officer"
                image="/images/company/exec-1.svg"
                linkedin="#"
            >}}
            {{< team-member 
                name="Michael Chen"
                title="Chief Technology Officer"
                image="/images/company/exec-2.svg"
                linkedin="#"
            >}}
            {{< team-member 
                name="Emily Rodriguez"
                title="Chief Product Officer"
                image="/images/company/exec-3.svg"
                linkedin="#"
            >}}
        </div>
    </div>
{{< /section-container >}}

{{< section-container class="py-20" >}}
    <div class="max-w-6xl mx-auto">
        <h2 class="text-3xl font-bold text-center mb-12">Backed by World-Class Investors</h2>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-8 items-center">
            {{< investor-logo name="Sequoia Capital" image="/images/company/investor-1.svg" >}}
            {{< investor-logo name="Andreessen Horowitz" image="/images/company/investor-2.svg" >}}
            {{< investor-logo name="Accel" image="/images/company/investor-3.svg" >}}
            {{< investor-logo name="Benchmark" image="/images/company/investor-4.svg" >}}
        </div>
    </div>
{{< /section-container >}}

{{< section-container class="py-20 bg-gray-50" >}}
    <div class="max-w-6xl mx-auto">
        <h2 class="text-3xl font-bold text-center mb-12">Company Values</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            {{< value-card 
                title="Innovation First"
                icon="lightbulb"
                description="We constantly push boundaries and embrace new technologies to solve complex challenges."
            >}}
            {{< value-card 
                title="Customer Success"
                icon="users"
                description="Our customers' success is our success. We're committed to delivering exceptional value."
            >}}
            {{< value-card 
                title="Transparency"
                icon="eye"
                description="We believe in open communication and building trust through transparency."
            >}}
        </div>
    </div>
{{< /section-container >}}

{{< section-container class="py-20" >}}
    <div class="max-w-6xl mx-auto">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8 text-center">
            {{< stat number="2015" label="Founded" >}}
            {{< stat number="200+" label="Team Members" >}}
            {{< stat number="10k+" label="Customers" >}}
            {{< stat number="50M+" label="Annual Revenue" >}}
        </div>
    </div>
{{< /section-container >}}
